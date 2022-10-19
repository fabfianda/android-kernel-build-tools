. ./do/env.sh

export TARGET="/home/fabrizio/Source/dev/kernel-modules/sampler/"

# build external modules
make CROSS_COMPILE="$CROSS_COMPILE" CROSS_COMPILE32="$CROSS_COMPILE32" ARCH="$ARCH" SUBARCH="$ARCH" SUBDIRS="$TARGET" modules
