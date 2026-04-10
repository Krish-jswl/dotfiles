picom &
blueman-applet &
dunst &
slstatus &

syncthing &

feh --bg-scale ~/Pictures/Wallpapers/forest.png

export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=dwm
export XDG_SESSION_DESKTOP=dwm

# idle
~/.local/bin/idle-daemon &

xrdb -merge ~/.Xresources

exec dwm
