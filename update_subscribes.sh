#!/bin/bash
# set variable below to your subscribe link for clashx
subscribe="your.clash.subscribe.link.here"

cp ~/.config/clash/config.yaml ~/.config/clash/config.yaml.old
wget -U "Mozilla/6.0" -O ~/.config/clash/config.yaml $subscribe
