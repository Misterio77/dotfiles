/etc/X11/xinit/xinitrc.d/50-systemd-user.sh
setxkbmap -layout us -variant intl
exec betterlockscreen -l blur & \
exec i3
