if [ -z "$DISPLAY" -a $XDG_VTNR -eq 1 ]; then
    startx ~/.xinitrc_tty1 -- vt1 &> /dev/null
    logout
fi
