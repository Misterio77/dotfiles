#! /usr/bin/bash

output=$(xtitle -i)

if [[ ${#output} -lt 50 ]]; then
    echo $output
else
    echo ${output:0:25} "..." ${output: -25}
fi

