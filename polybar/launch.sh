#!/usr/bin/env sh

# Terminate already running have benn shutdown
killall -q polybar

# Wait until the processes have been shutdown
while pgrep -u $UID -x polybar; do sleep 1; done

# Launch bar1 and bar2
polybar example &
