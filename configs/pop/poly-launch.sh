#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1
echo "---" | tee -a /tmp/polybar.log
polybar --config=/home/awyner/.config/polybar/config.ini example 2>> /tmp/polybar.log & disown

echo "Bars launched..."
