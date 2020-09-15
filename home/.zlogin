if [ -z "$DISPLAY" -a $XDG_VTNR -eq 1 ]; then
    startx ~/.xinitrc -- vt1 &> /dev/null
    logout
fi

