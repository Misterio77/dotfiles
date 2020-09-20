#!/bin/bash

if [[ -z "$@" ]]; then
    flavours list -l
else
    flavours apply $@
fi
exit
