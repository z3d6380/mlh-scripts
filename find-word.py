#!/usr/bin/env python

# File: find-word.py
# Written By: Luis Moraguez
# Description: Wordle Assistant using known letters of 5 letter words
# Usage: python ./find-word.py h_ll_
# Unknown letters represented by '_'

import re
import sys

# General regex pattern to help filter down 'words' file into only 5 letter words
pattern = "^[a-zA-Z]{5}$"

# Transform argument 1 into regex pattern for word
partial = sys.argv[1].lower().strip().replace("_", "[a-z]{1}")

# Open 'words' file and read into list called lines
file = open("/usr/share/dict/words", "r")
lines = file.readlines()

# Dictionary that contains the filtered out 5 letter words
filtered_words = {}

# Filtering words using general regex pattern
for line in lines:
  line = line.lower().strip()
  if bool(re.match(pattern, line)):
    filtered_words[line] = line

# Checking for partial match on all keys in the filtered words, and printing if true
for key in filtered_words.keys():
  if bool(re.match(partial, key)):
    print(filtered_words[key])
