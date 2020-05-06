#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d' ' -f1); do
    MONITOR=$m polybar top_bar -c ~/.config/polybar/$(hostname) &
    MONITOR=$m polybar bottom_bar -c ~/.config/polybar/$(hostname) &
  done
else
  polybar top_bar -c ~/.config/polybar/$(hostname) &
  polybar bottom_bar -c ~/.config/polybar/$(hostname) &
fi

echo "Bars launched..."
