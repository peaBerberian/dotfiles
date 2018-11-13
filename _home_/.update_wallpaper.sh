#!/bin/bash
if hash feh 2>/dev/null; then
        feh --recursive --randomize --bg-fill ~/images/wallpapers/

        while true; do
                sleep 1h
                feh --recursive --randomize --bg-fill ~/images/wallpapers/
        done
fi
