#!/bin/bash

# setup
WORK=`pwd`
DATE=$(date +%m%d)

# execution!
cd ..

# check for voodoo/non-voodoo
if [ "$1" != "V" ]; then
	CONFIG="novoodoo"
	cd fascinate_initramfs
	git checkout aosp
	mv .git ../
else
	CONFIG="voodoo"
	cd fascinate_initramfs
	git checkout aosp-voodoo
	mv .git ../
fi

# build the kernel
cd $WORK
echo "***** Building : AOSP $CONFIG *****"
make clean mrproper > /dev/null 2>&1
rm -f update_"$CONFIG"/*.zip update_"$CONFIG"/kernel_update/zImage

make ARCH=arm aosp_defconfig 1>/dev/null 2>"$WORK"/errlog.txt
make -j6 CROSS_COMPILE=/opt/toolchains/arm-2010q1/bin/arm-none-linux-gnueabi- ARCH=arm HOSTCFLAGS="-g -O3" 1>"$WORK"/stdlog.txt 2>>"$WORK"/errlog.txt
if [ $? != 0 ]; then
		echo -e "FAIL!\n"
		cd ..
		mv .git fascinate_initramfs/
		exit 1
	else
		echo -e "Success!\n"
		rm -f "$WORK"/*log.txt
fi

cp arch/arm/boot/zImage update_"$CONFIG"/kernel_update/zImage
cd update_"$CONFIG"
zip -r -q kernel_update.zip .
mv kernel_update.zip ../"$DATE"_aosp_"$CONFIG".zip
cd ../../
mv .git fascinate_initramfs/
cd $WORK
echo -e "***** Successfully compiled: AOSP $CONFIG *****\n"

if [ "$1" == "A" ]; then ./aosp_kernel.sh V; fi
