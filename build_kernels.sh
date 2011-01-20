#!/bin/bash

DATE=$(date +%m%d)

# Build Stock Voltage Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***      Building Stock Voltage Kernel      ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/plat-s5pc11x/max8998_consumer.sv arch/arm/plat-s5pc11x/max8998_consumer.c

# Build DJ05/DL09 Kernel
./build_voodoo.sh

# Build AOSP Kernel
./build_aosp_voodoo.sh

# Build Froyo Kernel
./build_froyo_voodoo.sh

# Copy kernels to Dropbox
mv "$DATE"_imnuts_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_sv_voodoo5.zip
mv "$DATE"_imnuts_aosp_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_aosp_sv_voodoo5.zip
mv "$DATE"_imnuts_froyo_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_froyo_sv_voodoo5.zip

# Build -25mV Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***     Building -25mV Undervolt Kernel     ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/plat-s5pc11x/max8998_consumer.25 arch/arm/plat-s5pc11x/max8998_consumer.c

# Build DJ05/DL09 Kernel
./build_voodoo.sh

# Build AOSP Kernel
./build_aosp_voodoo.sh

# Build Froyo Kernel
./build_froyo_voodoo.sh

# Copy kernels to Dropbox
mv "$DATE"_imnuts_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_25_voodoo5.zip
mv "$DATE"_imnuts_aosp_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_aosp_25_voodoo5.zip
mv "$DATE"_imnuts_froyo_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_froyo_25_voodoo5.zip

# Build -50mV Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***     Building -50mV Undervolt Kernel     ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/plat-s5pc11x/max8998_consumer.50 arch/arm/plat-s5pc11x/max8998_consumer.c

# Build DJ05/DL09 Kernel
./build_voodoo.sh

# Build AOSP Kernel
./build_aosp_voodoo.sh

# Build Froyo Kernel
./build_froyo_voodoo.sh

# Copy kernels to Dropbox
mv "$DATE"_imnuts_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_50_voodoo5.zip
mv "$DATE"_imnuts_aosp_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_aosp_50_voodoo5.zip
mv "$DATE"_imnuts_froyo_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_froyo_50_voodoo5.zip

# Build -75mV Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***     Building -75mV Undervolt Kernel     ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/plat-s5pc11x/max8998_consumer.75 arch/arm/plat-s5pc11x/max8998_consumer.c

# Build DJ05/DL09 Kernel
./build_voodoo.sh

# Build AOSP Kernel
./build_aosp_voodoo.sh

# Build Froyo Kernel
./build_froyo_voodoo.sh

# Copy kernels to Dropbox
mv "$DATE"_imnuts_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_75_voodoo5.zip
mv "$DATE"_imnuts_aosp_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_aosp_75_voodoo5.zip
mv "$DATE"_imnuts_froyo_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_froyo_75_voodoo5.zip

# Build -100mV Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***    Building -100mV Undervolt Kernel     ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/plat-s5pc11x/max8998_consumer.100 arch/arm/plat-s5pc11x/max8998_consumer.c

# Build DJ05/DL09 Kernel
./build_voodoo.sh

# Build AOSP Kernel
./build_aosp_voodoo.sh

# Build Froyo Kernel
./build_froyo_voodoo.sh

# Copy kernels to Dropbox
mv "$DATE"_imnuts_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_100_voodoo5.zip
mv "$DATE"_imnuts_aosp_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_aosp_100_voodoo5.zip
mv "$DATE"_imnuts_froyo_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_froyo_100_voodoo5.zip

# Build -125mV Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***    Building -125mV Undervolt Kernel     ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/plat-s5pc11x/max8998_consumer.125 arch/arm/plat-s5pc11x/max8998_consumer.c

# Build DJ05/DL09 Kernel
./build_voodoo.sh

# Build AOSP Kernel
./build_aosp_voodoo.sh

# Build Froyo Kernel
./build_froyo_voodoo.sh

# Copy kernels to Dropbox
mv "$DATE"_imnuts_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_125_voodoo5.zip
mv "$DATE"_imnuts_aosp_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_aosp_125_voodoo5.zip
mv "$DATE"_imnuts_froyo_voodoo5.zip ../../Dropbox/Public/Kernels/"$DATE"_imnuts_froyo_125_voodoo5.zip

# Update url_list.txt with links to kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***         Updating url_list.txt           ***"
echo -e "***                                         ***"
echo -e "***********************************************"

echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_sv_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_25_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_50_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_75_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_100_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_125_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_aosp_sv_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_aosp_25_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_aosp_50_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_aosp_75_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_aosp_100_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_aosp_125_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_froyo_sv_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_froyo_25_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_froyo_50_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_froyo_75_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_froyo_100_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_froyo_125_voodoo5.zip >> ../../Dropbox/Public/Kernels/url_list.txt