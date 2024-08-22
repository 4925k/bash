#!/bin/bash

# find the longest string in the file

# file name
file_name="$1"

# check for existence of file
if [ ! -r "$file_name" ]; then
  echo "File not found or not readable"
  exit 1
fi


# get all strings in the file
s=$( strings "$file_name" );

# keep track of length of longest string
max=0
word=""

# loop over all strings
for i in $s;
do
  # get the length of the string
  cur_len="${#1}"

  # update max length
  if [ "$cur_len" -gt "$max" ]; then
    max=$cur_len
    word="$i"
  fi

done

echo "max word and length: $word $max"