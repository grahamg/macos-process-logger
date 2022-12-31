#!/bin/bash

# Set the log file
LOG_FILE="/tmp/process-logger.log"

# Get the current list of processes managed by launchd
CURRENT_PROCESSES=$(launchctl list)

# Loop indefinitely
while :
do
    # Get the updated list of processes managed by launchd
    NEW_PROCESSES=$(launchctl list)

    # Compare the current and new lists of processes
    DIFF=$(diff <(echo "$CURRENT_PROCESSES") <(echo "$NEW_PROCESSES"))

    # If there are differences, log the new processes
    if [ -n "$DIFF" ]
    then
        echo "New processes detected:" >> "$LOG_FILE"
        echo "$DIFF" >> "$LOG_FILE"
    fi

    # Update the current list of processes
    CURRENT_PROCESSES="$NEW_PROCESSES"

    # Sleep for a short period before checking again
    sleep 5
done

