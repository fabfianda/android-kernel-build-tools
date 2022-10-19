# cleanup first
./do/clean.sh

. ./do/env.sh

# build
echo "Compiling..."

export KCFLAGS=-Wno-everything
export KAFLAGS=-Wno-everything
export KCPPFLAGS=-Wno-everything

make ARCH=arm64 $DEFCONF 
make KCFLAGS=$KCFLAGS KAFLAGS=$KAFLAGS KCPPFLAGS=$KCPPFLAGS CROSS_COMPILE="$CROSS_COMPILE" CROSS_COMPILE32="$CROSS_COMPILE32" ARCH="$ARCH" SUBARCH="$ARCH" -j24 > log_std.txt 2> log_err.txt

echo "Done"

echo "######"
tail log_std.txt

echo "######"
tail log_err.txt
