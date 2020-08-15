#!/usr/bin/bash

status=$(mcstatus $1 status 2>/dev/null)


if [ $(echo $?) -eq 0 ]; then
    players=$(echo "$status" | grep "players" | cut -d ':' -f2 | cut -d ' ' -f2)
    echo "  $players"
    exit 0
else
    echo ""
    exit -1
fi

