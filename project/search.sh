#!/bin/bash

# search for a word in the files in current directory

# get input from user
read -rp "Enter a word to search: " word

# create a destination folder if it doesn't exist
if [ ! -d found ]; then
  mkdir found
fi

# make a recursive search
find() {
  # loop over all files in current directory
  for file in $1; do
    # check for files and folders
    if [ -f "$file" ]; then
      # look for the word in the file
      match=$(grep -in "$word" "$file")
      if [ -n "$match" ]; then
        cp "$file" found/
      fi
    else
      find "$file"
    fi
  done
}

find $(find . -)
