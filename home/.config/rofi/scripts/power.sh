#!/bin/bash

options=("鈴 " "⏻ " " ")

if [[ -z "$@" ]]; then
    for option in "${options[@]}"; do
        echo "$option"
    done
else
    case $@ in
        ${options[0]})
            systemctl suspend;;
        ${options[1]})
            systemctl poweroff;;
        ${options[2]})
            systemctl reboot;;
    esac
fi
exit
