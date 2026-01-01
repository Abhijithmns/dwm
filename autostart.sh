#!/bin/sh
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin"
wal -R
picom &
setxkbmap -option caps:escape_shifted_capslock &
# restore pywal AFTER X is ready
(
    sleep 2
    xrdb -merge "$HOME/.cache/wal/colors.Xresources"
    dwmblocks &
) &

