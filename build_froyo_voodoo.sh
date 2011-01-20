#!/bin/bash

# setup
source build_froyo.sh

# execution!
cd ..

# fetch needed repos from github
for MODEL in $MODELS
do
	REPO="$MODEL"_initramfs && fetch_repo
done
REPO="cwm_voodoo" && fetch_repo

# check for and/or download voodoo lagfix stages
if [ ! -d lagfix ] || [ "$1" == "f" ]; then
	echo "***** Fetching lagfix code *****"
	rm -rf lagfix
	CMD="git clone git://github.com/jt1134/lagfix.git" && doit
fi
if [ ! -f lagfix/stages_builder/stages/stage1.tar ] || \
   [ ! -f lagfix/stages_builder/stages/stage2.tar.lzma ] || \
   [ ! -f lagfix/stages_builder/stages/stage3-sound.tar.lzma ]; then

	# never build stages again!
	echo "***** Fetching Voodoo stages *****"
	cd lagfix/stages_builder
	rm -f stages/stage*
	CMD="./scripts/download_precompiled_stages.sh" && doit
	cd ../../
fi

# make voodoo ramdisk
echo "***** Creating voodoo initramfs *****"
rm -rf *_voodoo5
for MODEL in $MODELS
do
	CMD="./lagfix/voodoo_injector/generate_voodoo_initramfs.sh \
		-s Fascinate_initramfs \
		-d \"$MODEL\"_voodoo5 \
		-x lagfix/extensions \
		-p lagfix/voodoo_initramfs_parts \
		-t lagfix/stages_builder/stages \
		-c cwm_voodoo \
		-u" && doit
done

# execute the kernel build script
echo -e "***** Running kernel build script *****\n"
cd linux-2.6-fascinate
./build_froyo_kernel.sh V
