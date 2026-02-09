#!/bin/bash

export HIKGTERLANDER=1

# Log
echo "=== Hikgterlander start ===" >> /tmp/hikgterlander.log

# Fondo
feh --bg-fill ~/Hikgterlander/wallpapers/default.png >> /tmp/hikgterlander.log 2>&1 &

# Servicios
picom >> /tmp/hikgterlander.log 2>&1 &
dunst >> /tmp/hikgterlander.log 2>&1 &
nm-applet >> /tmp/hikgterlander.log 2>&1 &
pasystray >> /tmp/hikgterlander.log 2>&1 &

# Polybar
export POLYBAR_CONFIG=~/Hikgterlander/polybar/config.ini
killall -q polybar
polybar -c "$POLYBAR_CONFIG" hikgterlander >> /tmp/hikgterlander.log 2>&1 &

echo "=== Hikgterlander done ===" >> /tmp/hikgterlander.log
