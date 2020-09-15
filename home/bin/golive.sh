#!/usr/bin/bash

pactl load-module module-null-sink sink_name=Virtual1
pactl load-module module-loopback source=$1 sink=Virtual1
pactl load-module module-loopback source=Virtual1.monitor sink=$2

