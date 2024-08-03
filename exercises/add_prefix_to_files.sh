#!/bin/bash

# ask user if they want to rename txt files or jpg files
# loop until they enter a valid input
while true; do
  read -rp "Add prefix to txt files or jpg file? [t/j] " file_type
  if [ "$file_type" == "t" ] || [ "$file_type" == "j" ] ; then
    break
  else
    echo "Invalid input. Please enter t or j."
  fi
done

# ask for the prefix to add to the file names
read -rp "Enter the prefix to add: " prefix

# add prefix to files
case $file_type in
  t)
    for file in ./*.txt; do
      [[ "$file" == "./*.txt" ]] && echo "no text files" && break
      mv "$file" "{$prefix}_$file"
    done
    ;;
  j)
    for file in ./*.jpg; do
      [[ "$file" == "./*.jpg" ]] && echo "no jpg files" && break
      mv "$file" "{$prefix}_$file"
    done
    ;;
esac


