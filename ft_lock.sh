#!/bin/bash

echo "__   .__.__  .__      _____  __     .__                 __      "
echo "|  | _|__|  | |  |   _/ ____\/  |_   |  |   ____   ____ |  | __ "
echo "|  |/ /  |  | |  |   \   __\\   __\  |  |  /  _ \_/ ___\|  |/ / "
echo "|    <|  |  |_|  |__  |  |   |  |    |  |_(  <_> )  \___|    <  "
echo "|__|_ \__|____/____/  |__|   |__|____|____/\____/ \___  >__|_ \ "
echo "     \/                        /_____/                \/     \/ "

# Use top to find the process ID for ft_lock
pid=$(top -bn1 | grep "ft_lock" | awk '{print $1}')

# Check if the PID was found
if [[ -n "$pid" ]]; then
    kill "$pid"
    echo "Process with PID $pid terminated."
else
    echo "Process not found."
fi
