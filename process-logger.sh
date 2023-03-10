#!/bin/bash

# Set the sqlite3 database file
DB_FILE="/tmp/process-logger.db"

# Set the sleep time argument
SLEEP_TIME=$1

# Create the table if it doesn't exist
if [ ! -f "$DB_FILE" ]
then
    sqlite3 "$DB_FILE" "CREATE TABLE process_list (time_stamp DATETIME, process_list TEXT);"
fi

# Get the current list of processes managed by launchd
CURRENT_PROCESSES=$(launchctl list)

# Loop indefinitely
while :
do
    # Get the updated list of processes managed by launchd
    NEW_PROCESSES=$(launchctl list | grep -E '(< -)|(\b(?<!\.)\d+(?!\.)\b)|(---)|(([0-9a-fA-F]){7})|(New processes detected:\n.*[0-9a-fA-F]+)|(< [0-9]+)|(> [0-9]+ 0)|(.*com.apple.mdworker.shared.*\n)')

    # Compare the current and new lists of processes
    DIFF=$(diff <(echo "$CURRENT_PROCESSES") <(echo "$NEW_PROCESSES"))

    # If there are differences, log the new processes
    if [ -n "$DIFF" ]
    then
        sqlite3 "$DB_FILE" "INSERT INTO process_list (time_stamp, process_list) VALUES (datetime('now'), '$DIFF');"
    fi

    # Update the current list of processes
    CURRENT_PROCESSES="$NEW_PROCESSES"

    # Sleep for a short period before checking again
    sleep $SLEEP_TIME
done
