while true; do pic=$(find ~/images/wallpapers/ -type f | shuf -n1); swaymsg output "*" background "$pic" fill; sleep 3600; done
