#!/usr/bin/bash
old=$(pgrep -f "swaybg -i")
swaybg -i $(cat ~/.bg) -m fill & \
sleep 0.2
if ! [ -z "$old" ]; then
    kill $old
fi
