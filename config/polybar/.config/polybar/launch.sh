#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar -q top -c ~/.config/polybar/config.ini &
polybar -q systray -c ~/.config/polybar/config.ini &
polybar -q sub -c ~/.config/polybar/config.ini &

