#!/usr/bin/env bash

# File: find-file.sh
# Written By: Luis Moraguez
# Description: Accepts a filename as an argument and display the number of matches found in the system and the locations of where that file was found

for file in "$@"; do
	echo -e "************ Searching for '$file' ************"
	find / -iname "$file" > /tmp/find-file.tmp 2> /dev/null
	echo -e "Found $(wc -l < /tmp/find-file.tmp) match(es)"
	cat /tmp/find-file.tmp
	rm /tmp/find-file.tmp
	echo -e "*******************************************************\n\n"
done
exit
