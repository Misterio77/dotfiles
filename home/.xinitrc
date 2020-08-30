/etc/X11/xinit/xinitrc.d/50-systemd-user.sh
setxkbmap -layout us -variant intl
exec multilockscreen -l & \
exec i3
