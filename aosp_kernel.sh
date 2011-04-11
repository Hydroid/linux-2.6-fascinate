#!/bin/bash

# setup
WORK=`pwd`
DATE=$(date +%m%d)

# check for voodoo/non-voodoo
if [ "$1" != "V" ]; then
	CONFIG="novoodoo"
else
	CONFIG="voodoo"
fi

# build the kernel
echo "***** Building : AOSP $CONFIG *****"
make clean mrproper > /dev/null 2>&1
rm -f update_"$CONFIG"/*.zip update_"$CONFIG"/kernel_update/zImage

make ARCH=arm aosp_"$CONFIG"_defconfig 1>/dev/null 2>"$WORK"/errlog.txt
make -j6 CROSS_COMPILE=/opt/toolchains/arm-2009q3/bin/arm-none-linux-gnueabi- ARCH=arm HOSTCFLAGS="-g -O3" 1>"$WORK"/stdlog.txt 2>>"$WORK"/errlog.txt
if [ $? != 0 ]; then
		echo -e "FAIL!\n"
		exit 1
	else
		echo -e "Success!\n"
		rm -f "$WORK"/*log.txt
fi

cp arch/arm/boot/zImage update_"$CONFIG"/kernel_update/zImage
cd update_"$CONFIG"
zip -r -q kernel_update.zip .
mv kernel_update.zip ../"$DATE"_aosp_"$CONFIG".zip
cd ..
echo -e "***** Successfully compiled: AOSP $CONFIG *****\n"

if [ "$1" == "A" ]; then ./aosp_kernel.sh V; fi
