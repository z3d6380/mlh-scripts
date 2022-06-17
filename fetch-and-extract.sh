#!/usr/bin/env bash

# File: fetch-and-extract.sh
# Written By: Luis Moraguez
# Description: Fetch using curl and extract top 10 symbols with the highest volume

curl -s https://www.cryptingup.com/api/markets | jq '.markets[] | "\(.symbol) \(.volume_24h) \(.price)"' | sort -r -nk2 | sed 's/"//g' | head
