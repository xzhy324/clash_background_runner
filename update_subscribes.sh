#!/bin/bash
# set variable below to your subscribe link for clashx
# your.clash.subscribe.link.here
subscribe="https://to.runba.cyou/link/QRHsrJELGlvmL4qT?clash=1"

CONFIG_PATH=~/.config/clash/config.yaml
if [ -e $CONFIG_PATH ]; then
	cp $CONFIG_PATH $CONFIG_PATH.old
fi
wget -U "Mozilla/6.0" -O $CONFIG_PATH $subscribe
if test  ! -s $CONFIG_PATH  -a  -e $CONFIG_PATH.old ; then
	cp $CONFIG_PATH.old $CONFIG_PATH
fi
