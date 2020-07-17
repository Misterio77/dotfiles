#!/bin/bash

if [[ -z "$@" ]]; then
    setcolor -L
else
    ~/bin/setcolor $@
fi
exit
