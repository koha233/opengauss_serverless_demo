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
use tokio::fs; // 使用 Tokio 的异步文件操作
use std::process::Command;
use std::process::Stdio;

const STORAGE_DIR: &str = "/home/candle/GaussData";
const EIO_RETRY_TIMES: usize = 3;

// 数据库连接常量
const DB_NAME: &str = "tpch_cs";
const DB_PORT: u16 = 5432;
const DB_USER: &str = "candle";

// 请求参数结构体
#[derive(Deserialize)]
struct ReadParams {
    offset: usize,
    length: usize,
}

// plan请求参数结构体
#[derive(Deserialize)]
struct PlanRequest {
    plan: String,
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

// 根据查询计划执行
async fn exec_plan(Query(params): Query<PlanRequest>) -> Response {
    info!(
        format!("Received request for plan: {}", params.plan)
    );
    // 定义要写入的文件路径
    let file_path = "tmp_received_plan.sql";

    // 尝试将内容写入文件
    match fs::write(file_path, &params.plan).await {
        Ok(_f) => {},
        Err(e) => {
            return (StatusCode::INTERNAL_SERVER_ERROR, format!("exec_plan error: {}", e)).into_response();
        }
   
    }
    // 执行 gsql 命令
    match execute_gsql() {
        Ok(output) => {
            let result = String::from_utf8_lossy(&output.stdout).to_string();
            info!("gsql execution result:\n{}", result);
            Response::builder()
                .status(StatusCode::OK)
                .header("Content-Type", "text/plain")
                .body(result.into())
                .unwrap()
        }
        Err(err) => {
            warn!("gsql execution failed: {}", err);
            return (StatusCode::INTERNAL_SERVER_ERROR, format!("exec_plan error: {}", err)).into_response();
        }
    }
}

/// 执行 gsql 命令
fn execute_gsql() -> Result<std::process::Output, String> {
    // 构建命令 - 使用同步的 std::process::Command
    let output = Command::new("gsql")
        .args(&[
            "-d", DB_NAME,
            "-p", &DB_PORT.to_string(),
            "-U", DB_USER,
            "-f", "tmp_received_plan.sql"
        ])
        .stdout(Stdio::piped())  // 配置标准输出管道
        .stderr(Stdio::piped())  // 配置标准错误管道
        .output()
        .map_err(|e| format!("Failed to execute gsql: {}", e))?;

    // 检查执行状态
    if !output.status.success() {
        let stderr = String::from_utf8_lossy(&output.stderr);
        return Err(format!("gsql command failed: {}", stderr));
    }

    Ok(output)
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
        .route("/plan", get(exec_plan))
        .fallback(handler_404);

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    println!("Listening on http://{}", addr);
    axum::serve(tokio::net::TcpListener::bind(addr).await.unwrap(), app)
        .await
        .unwrap();
}
