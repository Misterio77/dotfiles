#!/usr/bin/bash
old=$(pgrep -f "swaybg -i")
swaybg -i $(cat ~/.bg) -m fill & \
sleep 0.8
if ! [ -z "$old" ]; then
    kill $old
fi
