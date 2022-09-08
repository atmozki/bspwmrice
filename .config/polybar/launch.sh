#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Start mainbar
polybar mainbar &

# Start external display mainbar
if [[ $(xrandr --query | grep 'HDMI-1 connected') ]]; then
   polybar external &
fi