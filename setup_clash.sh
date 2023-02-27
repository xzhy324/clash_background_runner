#!/bin/bash
arch="unknown"
version="v1.13.0"

DIR=$(cd $(dirname $0);pwd)
get_arch=`arch`
echo $get_arch
if [[ $get_arch =~ "x86_64" ]];then
    arch="amd64"
elif [[ $get_arch =~ "i386" ]];then
    arch="386"
fi

wget -O clash.gz https://github.com/Dreamacro/clash/releases/download/$version/clash-linux-$arch-$version.gz
gzip -f clash.gz -d 
chmod +x $DIR/clash
chmod +x $DIR/update_subscribes.sh
chmod +x $DIR/bgrun_clash.sh

if [ $# > 1 ]; then
    lineno=$(grep "subscribe=" $DIR/update_subscribes.sh -n | awk -F: '{print $1}')
    sed -i "${lineno}c subscribe=$1" $DIR/update_subscribes.sh
fi

$DIR/update_subscribes.sh
wget -O ~/.config/clash/Country.mmdb https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb

echo "clash has been set up!"
echo "run ./bgrun_clash.sh to start";
