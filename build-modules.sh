. ./do/env.sh

# build
echo "Compiling..."
make ARCH=arm64 exynos8895-greatlte_defconfig
make INSTALL_MOD_PATH=/tmp/build/ VERBOSE=1 ARCH=arm64 modules > log_std.txt 2> log_err.txt
make INSTALL_MOD_PATH=/tmp/build/ VERBOSE=1 ARCH=arm64 modules_install > log_std.txt 2> log_err.txt
echo "Done"
tail log_std.txt
