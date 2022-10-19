# cleanup first
./clean.sh

# set constants 
export KDIR=$PWD
export ANDROID_MAJOR_VERSION=p
export ARCH=arm64
export SUBARCH=arm64

# build
echo "Compiling..."
make ARCH=arm64 exynos8895-greatlte_defconfig
time make VERBOSE=1 CC="ccache gcc" ARCH=arm64 -j7 > log_std.txt 2> log_err.txt
echo "Done"
tail log_std.txt
