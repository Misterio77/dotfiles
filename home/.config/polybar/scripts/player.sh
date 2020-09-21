#!/bin/bash
status=$(mpris-ctl --player $(currentplayer) status 2>&1)
songinfo=$(mpris-ctl --player $(currentplayer) info "%track_name - %artist_name" 2>&1)

if [[ $status == "Playing" ]]; then
    echo "  $songinfo"
elif [[ $status == "Paused" ]]; then
    echo "契  $songinfo"
else
    echo ""
fi
