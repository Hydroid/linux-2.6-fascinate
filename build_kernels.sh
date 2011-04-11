#!/bin/bash

DATE=$(date +%m%d)

# Build Stock Voltage Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***      Building Stock Voltage Kernel      ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/mach-s5pv210/atlas/max8998_consumer.0 arch/arm/mach-s5pv210/atlas/max8998_consumer.c

# Build Kernels
./build_kernel.sh A
./aosp_kernel.sh A

# Move kernels to Dropbox
mv "$DATE"_imnuts_voodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_imnuts_sv_voodoo.zip
mv "$DATE"_imnuts_novoodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_imnuts_sv_novoodoo.zip
mv "$DATE"_aosp_voodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_aosp_sv_voodoo.zip
mv "$DATE"_aosp_novoodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_aosp_sv_novoodoo.zip

# Build -50mV Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***     Building -50mV Undervolt Kernel     ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/mach-s5pv210/atlas/max8998_consumer.50 arch/arm/mach-s5pv210/atlas/max8998_consumer.c

# Build Kernels
./build_kernel.sh A
./aosp_kernel.sh A

# Move kernels to Dropbox
mv "$DATE"_imnuts_voodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_imnuts_50_voodoo.zip
mv "$DATE"_imnuts_novoodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_imnuts_50_novoodoo.zip
mv "$DATE"_aosp_voodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_aosp_50_voodoo.zip
mv "$DATE"_aosp_novoodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_aosp_50_novoodoo.zip

# Build -100mV Kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***    Building -100mV Undervolt Kernel     ***"
echo -e "***                                         ***"
echo -e "***********************************************"
cp -f arch/arm/mach-s5pv210/atlas/max8998_consumer.100 arch/arm/mach-s5pv210/atlas/max8998_consumer.c

# Build Kernels
./build_kernel.sh A
./aosp_kernel.sh A

# Move kernels to Dropbox
mv "$DATE"_imnuts_voodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_imnuts_100_voodoo.zip
mv "$DATE"_imnuts_novoodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_imnuts_100_novoodoo.zip
mv "$DATE"_aosp_voodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_aosp_100_voodoo.zip
mv "$DATE"_aosp_novoodoo.zip ../../../Dropbox/Public/Kernels/"$DATE"_aosp_100_novoodoo.zip

# Update url_list.txt with links to kernels
echo -e "***********************************************"
echo -e "***                                         ***"
echo -e "***         Updating url_list.txt           ***"
echo -e "***                                         ***"
echo -e "***********************************************"

echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_sv_voodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_50_voodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_100_voodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_sv_novoodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_50_novoodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_imnuts_100_novoodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_aosp_sv_voodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_aosp_50_voodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_aosp_100_voodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_aosp_sv_novoodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_aosp_50_novoodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
echo http://dl.dropbox.com/u/17111376/Kernels/"$DATE"_aosp_100_novoodoo.zip >> ../../../Dropbox/Public/Kernels/url_list.txt
