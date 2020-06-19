#!/usr/bin/env sh
polybar-msg cmd quit

polybar -r left  -c ~/.config/polybar/config.ini &
polybar -r right -c ~/.config/polybar/config.ini &
