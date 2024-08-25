#!/bin/bash
# find the number of modifications in each hour

dir="$1"

# check for existence of directory
if [ ! -d "$dir" ]; then
  echo "Directory not found"
  exit 1
fi

# get modification times of all files
mod_times=$(  stat -c "%y" "$dir"/* | cut -c 12-13 )

# update the count of modifications for each hour
for i in {1..24};
do
  hours[i]=0
done


# loop over all modification times to update the count of modifications for each hour
for i in $mod_times;
do
  j=${i#0}
  (( hours[j]=hours[i]+1 ))
done

# pretty print
echo -e "Hours\tModifications"
for i in {1..24};
do
  if [ ! "${hours[i]}" -eq 0 ]; then
    echo -e "$i\t${hours[i]}"
  fi
done
