#!/usr/bin/env bash

# File: 5.1.sh
# Written By: Luis Moraguez
# Description: Print the number of source IP addresses

echo -e "There's $(wc -l < $1) IP Address(es) in the log file."
