#!/bin/bash

# Get the PID of the active window
pid=$(hyprctl activewindow -j | jq -r '.pid')

# Get the cwd from /proc
cwd=$(readlink /proc/$pid/cwd)

# Open kitty in that directory
kitty --working-directory "$cwd"
