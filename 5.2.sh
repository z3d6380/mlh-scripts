#/usr/bin/env bash

# File: 5.2.sh
# Written By: Luis Moraguez
# Description: Print the size of the 5 largest requests in bytes
# Usage: ./5.2.sh {path_to_log}

cat $1 | sort -r -nk10 | head -n 5
