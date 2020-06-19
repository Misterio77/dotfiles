#!/bin/bash

if [[ -z "$@" ]]; then
    setwallpaper -L
else
    ~/bin/setwallpaper $@
fi
exit
