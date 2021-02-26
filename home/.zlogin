# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
elif [ "$(tty)" = "/dev/tty6" ]; then
	exec cbonsai -S
fi
