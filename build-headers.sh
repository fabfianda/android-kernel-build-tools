# set constants 
export KDIR=$PWD
export CROSS_COMPILE=$KDIR/toolchain/gcc-cfp/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ANDROID_MAJOR_VERSION=p
export ARCH=arm64
export SUBARCH=arm64

# build
echo "Compiling..."
make ARCH=arm64 exynos8895-greatlte_defconfig
make INSTALL_HDR_PATH=/tmp/build/ VERBOSE=1 ARCH=arm64 headers_install > log_std.txt 2> log_err.txt
echo "Done"
tail log_std.txt
