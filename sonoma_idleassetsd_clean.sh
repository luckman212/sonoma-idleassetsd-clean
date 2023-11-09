#!/bin/zsh --no-rcs

# Sonoma wallpaper and idle assets cleaner
# https://www.reddit.com/r/MacOSBeta/comments/161rkq6/warning_the_new_macos_sonoma_wallpapers_take_up_a/

IDLEASSETSD='/Library/Application Support/com.apple.idleassetsd'
if [[ -n $(find "$IDLEASSETSD" -size +5M 2>/dev/null) ]]; then
	sudo ${SUDO_ASKPASS:+-A} find "$IDLEASSETSD" -size +5M -delete 2>/dev/null
	echo "cleaned up $IDLEASSETSD"
fi
