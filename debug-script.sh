#!/usr/bin/env bash

# File: debug-script.sh
# Written By: Luis Moraguez
# Description: Accepts any file path to a script as first argument and run the provided script until it fails. Provides number of times to get the error and prints out standard output and standard error streams.

COUNT=0

echo -e "Beginning Debug of '$1'"
while true; do
	$1 > ./STANDARD_OUT.tmp 2> ./ERROR_OUT.tmp
	if [ $? -eq 1 ]; then
		break
	fi
	((COUNT++))
done
echo -e "It took $COUNT run(s) to fail."
echo -e "Standard Output:\n$(cat ./STANDARD_OUT.tmp)"
echo -e "Standard Error:\n$(cat ./ERROR_OUT.tmp)"
rm {./STANDARD_OUT.tmp,./ERROR_OUT.tmp}
