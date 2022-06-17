#!/usr/bin/env bash

# File: parameters.sh
# Written By: Luis Moraguez
# Description: Shows the different uses of shell parameters

echo "Process ID: $$"
echo "File Name: $0"
echo "First Parameter: $1"
echo "Second Parameter: $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Parameter(s): $#"
echo "Exit Status: $?"
echo "Last Output: '$_'"
