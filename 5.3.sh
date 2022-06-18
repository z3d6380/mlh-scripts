#/usr/bin/env bash

# File: 5.3.sh
# Written By: Luis Moraguez
# Description: Print the number of requests by status-code for all status codes in the log file
# Usage: ./5.3.sh {path_to_log}

cat $1 | sort -nk9 | cut -d ' ' -f 9 | uniq -c | awk '{print $2": "$1}'
