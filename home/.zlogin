if [ -z "$DISPLAY" -a $XDG_VTNR -eq 1 ]; then
    startx ~/.xinitrc -- vt1 &> /dev/null
    logout
#elif [ -z "$DISPLAY" -a $XDG_VTNR -eq 2 ]; then
#    startx ~/.xinitrc_steam -- vt2 &> /dev/null
#    logout
fi

