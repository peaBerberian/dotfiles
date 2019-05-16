#!/bin/bash
if hash feh 2>/dev/null; then
        feh --recursive --randomize --bg-fill $HOME/images/wallpapers/

        while true; do
                sleep 1h
                feh --recursive --randomize --bg-fill $HOME/images/wallpapers/
        done
fi
