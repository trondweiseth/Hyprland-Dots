#!/bin/bash

# Get id of an active window
active_pid=$(hyprctl activewindow | grep -o 'pid: [0-9]*' | awk '{print $2}')

# Close active window
kill -9 $active_pid
