# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Defaults and path
export EDITOR=nvim
export VISUAL=nvim
export QT_QPA_PLATFORMTHEME=gtk2
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin:/usr/local/bin:$PATH
source /etc/profile.d/jre.sh

/etc/X11/xinit/xinitrc.d/50-systemd-user.sh
setxkbmap -layout us -variant intl
exec multilockscreen -l & \
exec i3
