#!/bin/bash


# count number of txt files inside current directory
count_txt_files() {
  local count=0

  for file in ./*.txt;  do
    # check if there are no files
    [[ "$file" == "./*.txt" ]] && break

    # increment count for each file
    count=$((count + 1))
  done

  echo $count
}

count_txt_files