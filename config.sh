. ./do/env.sh

make $DEFCONF
make menuconfig

make savedefconfig
cp defconfig arch/$ARCH/configs/$DEFCONF
