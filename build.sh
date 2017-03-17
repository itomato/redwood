#!/bin/bash
clear
VER=$(date +%Y%m%d%s)
sed -i s/%VER%/$VER/g system/skeleton/etc/issue
echo "#Edition - $VER" | tee -a redwood.config.$VER
git add redwood.config.$VER
git commit -m "redwood.config.$VER - from build.sh"
git push
#cp .config redwood.config.$VER
grep ^BR2 .config >> redwood.config.$VER
unset LD_LIBRARY_PATH
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

make

#rsync -Rav dl/* itomato@a9group.net:/home/itomato/embedded.a9group.net/redwood/ 
