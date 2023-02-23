#!/bin/bash
# a script to run clashx in the background in terminal.

./update_subscribes.sh
./clash &
clash_pid=$(ps -x | grep ./clash | head -1 | awk '{print $1}')
disown $clash_pid
