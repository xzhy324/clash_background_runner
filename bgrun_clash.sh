#!/bin/bash
# a script to run clashx in the background in terminal.

DIR=$(cd $(dirname $0);pwd)
$DIR/update_subscribes.sh
$DIR/clash &
clash_pid=$(ps -x | grep clash | head -1 | awk '{print $1}')
disown $clash_pid
