# Start dbus session daemon if not already running
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
  eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

#services to start
slstatus &
picom &


# Set your wallpaper with feh
feh --bg-scale ~/Pictures/one-galaxy.png &

# Start dwm (replace with your WM/DE if different)
exec dwm
