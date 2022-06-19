#/usr/bin/env python

# File: 5.4.py
# Written By: Luis Moraguez
# Description: Given a start and end time, return all requests in that time range
#
#                                      {START DATE} {START TIME} {OFFSET} {END DATE} {END TIME} {OFFSET}
# Usage: python ./5.4.py {path_to_log} {YYYY-mm-dd} {HH:MM:SS} {+zzzz} {YYYY-mm-dd} {HH:MM:SS} {+zzzz}

import sys
import re
from datetime import datetime

regex = '([(\d\.)]+) - - \[(.*?)\] "(.*?)" (\d+) (\d+)'
_startDT = datetime.strptime(sys.argv[2]+' '+sys.argv[3]+' '+sys.argv[4], '%Y-%m-%d %H:%M:%S %z')
_endDT = datetime.strptime(sys.argv[5]+' '+sys.argv[6]+' '+sys.argv[7], '%Y-%m-%d %H:%M:%S %z')

# Open log file
with open(sys.argv[1]) as f:
	for line in f:
		_line = re.match(regex, line).groups()
		_datetime = datetime.strptime(_line[1], '%d/%b/%Y:%H:%M:%S %z')

		# Filter log contents by date and time and print
		if (_startDT <= _datetime <= _endDT):
			print(_line)
