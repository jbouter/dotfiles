#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar top_bar -c ~/.config/polybar/$(hostname) &
polybar bottom_bar -c ~/.config/polybar/$(hostname) &

echo "Bars launched..."
