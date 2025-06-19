use axum::{
    Router,
    extract::{Path, Query},
    http::StatusCode,
    response::{IntoResponse, Response},
    routing::get,
};
use libc::{EINTR, EIO, pread};
use serde::Deserialize;
use tklog::{info, warn};
use std::io::Error;
use std::os::unix::io::AsRawFd;
use std::{fs::File, net::SocketAddr, path::PathBuf};

const STORAGE_DIR: &str = "/home/zsl/GaussData";
const EIO_RETRY_TIMES: usize = 3;

// 请求参数结构体
#[derive(Deserialize)]
struct ReadParams {
    offset: usize,
    length: usize,
}

// pread 安全读取
fn file_pread(file: &File, buf: &mut [u8], offset: usize) -> Result<usize, Error> {
    let fd = file.as_raw_fd();
    let mut retry_count = 0;

    loop {
        let ret = unsafe {
            pread(
                fd,
                buf.as_mut_ptr() as *mut libc::c_void,
                buf.len(),
                offset as libc::off_t,
            )
        };

        if ret >= 0 {
            return Ok(ret as usize);
        }

        let err = Error::last_os_error();
        let errno = err.raw_os_error().unwrap_or(0);

        match errno {
            EINTR => continue,
            EIO if retry_count < EIO_RETRY_TIMES => {
                retry_count += 1;
                eprintln!("EIO error, retry {}/{}", retry_count, EIO_RETRY_TIMES);
                continue;
            }
            _ => return Err(err),
        }
    }
}

// 路由处理器
async fn get_file(Path(filename): Path<String>, Query(params): Query<ReadParams>) -> Response {
    info!(
        format!("Received request for file: {}, offset: {}, length: {}",
        filename, params.offset, params.length)
    );
    let mut path = PathBuf::from(STORAGE_DIR);
    path.push(&filename);
    
    let file = match File::open(&path) {
        Ok(f) => f,
        Err(e) => {
            return (StatusCode::NOT_FOUND, format!("File open error: {}", e)).into_response();
        }
    };

    let mut buf = vec![0u8; params.length];
    match file_pread(&file, &mut buf, params.offset) {
        Ok(n) => {
            buf.truncate(n);
            (
                StatusCode::OK,
                [("Content-Type", "application/octet-stream")],
                buf,
            )
                .into_response()
        }
        Err(e) => (
            StatusCode::INTERNAL_SERVER_ERROR,
            format!("pread error: {}", e),
        )
            .into_response(),
    }
}

// 404 fallback
async fn handler_404(uri: axum::http::Uri) -> impl IntoResponse {
    warn!(format!("404 Not Found: {}", uri));
    (StatusCode::NOT_FOUND, format!("No route found for {}", uri))
}

// 启动服务
#[tokio::main]
async fn main() {
    let app = Router::new()
        .route("/files/{*filename}", get(get_file))
        .fallback(handler_404);

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    println!("Listening on http://{}", addr);
    axum::serve(tokio::net::TcpListener::bind(addr).await.unwrap(), app)
        .await
        .unwrap();
}
