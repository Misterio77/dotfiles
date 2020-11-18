#!/bin/bash
status=$(mpris-ctl status 2>&1)
songinfo=$(mpris-ctl info "%track_name - %artist_name" 2>&1)

if [[ $status == "Playing" ]]; then
    echo "  $songinfo"
elif [[ $status == "Paused" ]]; then
    echo "契  $songinfo"
else
    echo ""
fi
