#!/bin/bash
options=(" " " ﱮ" " " " " " ")

if [[ -z "$@" ]]; then
    for option in "${options[@]}"; do
        echo "$option"
    done
else
    case $@ in
        ${options[0]})
            kitty -1 --listen-on=unix:@reloadkitty &
            ;;
        ${options[1]})
            kitty -1 --listen-on=unix:@reloadkitty 'ranger' &
            ;;
        ${options[2]})
            kitty -1 --listen-on=unix:@reloadkitty 'nvim' &
            ;;
        ${options[3]})
            zsh -i -c 'firefox-developer-edition' &
            ;;
        ${options[4]})
            kitty -1 --listen-on=unix:@reloadkitty 'ncspot' &
            ;;
    esac
    killall rofi
fi
exit
