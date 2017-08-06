cd node-v8.2.1
export STAGING_DIR=/home/lwd/hwdev/openwrt/staging_dir
PATH=$PATH:$STAGING_DIR/toolchain-mipsel_1004kc+dsp_gcc-5.3.0_musl-1.1.16/bin

export AR=mipsel-openwrt-linux-musl-ar
export CC=mipsel-openwrt-linux-musl-gcc
export CXX=mipsel-openwrt-linux-musl-g++
export LINK=mipsel-openwrt-linux-musl-g++

export CC_host="gcc -m32"
export CXX_host="g++ -m32"
export LINK_host="g++ -m32"

export CFLAGS="-mips32r2 -mtune=1004kc"
export CXXFLAGS="-mips32r2 -mtune=1004kc"
export LDFLAGS=-static-libstdc++

./configure --with-mips-float-abi=soft  --without-snapshot --without-intl --dest-cpu=mipsel --dest-os=linux
make -j4
