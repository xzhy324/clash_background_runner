#!/bin/bash
arch="unknown"
version="v1.13.0"

get_arch=`arch`
echo $get_arch
if [[ $get_arch =~ "x86_64" ]];then
    arch="amd64"
elif [[ $get_arch =~ "i386" ]];then
    arch="386"
fi

wget -O clash.gz https://github.com/Dreamacro/clash/releases/download/$version/clash-linux-$arch-$version.gz
gzip -f clash.gz -d 
chmod +x ./clash
chmod +x ./update_subscribes.sh
chmod +x ./bgrun_clash.sh
./update_subscribes.sh
wget -O ~/.config/clash/Country.mmdb https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb

echo "clash has been set up!"
echo "run ./bgrun_clash.sh to start";
