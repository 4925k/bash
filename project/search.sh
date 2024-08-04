#!/bin/bash

# search for a word in the files in current directory

# get input from user
read -rp "Enter a word to search: " word


# loop over all files in current directory
for file in *; do
  # check for files and folders
  if [ -f "$file" ]; then

    # look for the word in the file
    match=$(grep -in "$word" "$file")
    if [ -n "$match" ]; then
      echo "found in $file: $match"
    fi
  else
    echo ""
#    echo "found non file: $file"
  fi
done
