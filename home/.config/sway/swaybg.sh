#!/usr/bin/bash
old=$(pgrep -f "swaybg -i")
swaybg -i $(cat ~/.bg) & \
sleep 0.4
if ! [ -z "$old" ]; then
    kill $old
fi
