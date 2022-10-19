#
rm ../tools/AnyKernel3/Imag*
rm ../tools/AnyKernel3/*.img
rm ../tools/AnyKernel3/UPDATE*

#
cp arch/arm64/boot/Image ../tools/AnyKernel3/

#
./do/vermagic.sh

#
cd ../tools/AnyKernel3

./package.sh

#
cd -
