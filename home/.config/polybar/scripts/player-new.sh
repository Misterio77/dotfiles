#!/bin/bash
status=$(mpris-ctl --player active status 2>&1)
songinfo=$(mpris-ctl --player active info "%track_name - %artist_name" 2>&1)

if [[ $status == "Playing" ]]; then
    echo "  $songinfo"
elif [[ $status == "Paused" ]]; then
    echo "契  $songinfo"
else
    echo ""
fi
