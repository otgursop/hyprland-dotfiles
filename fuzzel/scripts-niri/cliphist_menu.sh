#!/bin/sh

chosen=$(cliphist list | fuzzel \
    --dmenu \
    --prompt "Clipboard: " \
    --lines 10 \
    --width 150)

if [ -n "$chosen" ]; then
    echo "$chosen" | cliphist decode | wl-copy
fi

