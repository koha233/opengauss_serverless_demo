USERNAME=$(whoami)
export OPENGAUSS_DEV_DIR=/home/${USERNAME}
#### 选择版本、平台信息
export DEBUG_TYPE=release
export BUILD_TUPLE=x86_64
export GCC_VERSION=10.3.1
##### 导入三方库环境变量 
export THIRD_BIN_PATH=$OPENGAUSS_DEV_DIR/openGauss-third_party_binarylibs_openEuler_2203_x86_64
export JAVA_HOME=$THIRD_BIN_PATH/kernel/platform/openjdk8/${BUILD_TUPLE}/jdk/
export PATH=${JAVA_HOME}/bin:$PATH
export APPEND_FLAGS="-g3 -w -fPIC"
export GCCFOLDER=$THIRD_BIN_PATH/buildtools/gcc10.3
export CC=$GCCFOLDER/gcc/bin/gcc
export CXX=$GCCFOLDER/gcc/bin/g++
export LD_LIBRARY_PATH=$GCCFOLDER/gcc/lib64:$GCCFOLDER/isl/lib:$GCCFOLDER/mpc/lib/:$GCCFOLDER/mpfr/lib/:$GCCFOLDER/gmp/lib/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$THIRD_BIN_PATH/kernel/dependency/kerberos/comm/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$THIRD_BIN_PATH/kernel/dependency/libcgroup/comm/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$THIRD_BIN_PATH/kernel/dependency/openssl/comm/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$THIRD_BIN_PATH/kernel/dependency/libcurl/comm/lib:$LD_LIBRARY_PATH
export PATH=$GCCFOLDER/gcc/bin:$PATH
export PREFIX_HOME=$OPENGAUSS_DEV_DIR/openGauss-Scale/mppdb_temp_install
export GAUSSHOME=$PREFIX_HOME
export LD_LIBRARY_PATH=$GAUSSHOME/lib:$LD_LIBRARY_PATH
export PATH=$GAUSSHOME/bin:$PATH

echo "环境变量设置完成"
echo "OpenGauss安装目录: $GAUSSHOME"
echo "OpenGauss二进制库路径: $THIRD_BIN_PATH"cmake .. -DENABLE_MULTIPLE_NODES=OFF -DENABLE_THREAD_SAFETY=ON -DENABLE_READLINE=ON -DENABLE_MOT=ON -DENABLE_OPENEULER_MAJOR=ON

