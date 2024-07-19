# list files
ls

# list files with details
ls -l

#Example
#drwxr-xr-x  2 root root 4096 Mar  1  2018 bin
#
#d -> directory
#rwx -> read, write, execute for owner
#r-x -> read, execute for group
#r-x -> read, execute for others
#2 -> number of links
#root -> owner
#root -> group
#4096 -> size in bytes
#Mar  1  2018 -> last modified date
#bin -> file name

# list files with details and hidden files
 ls -la

# file -> get information about file
file example.txt

# change directory
cd ~/Desktop || exit

# open file, folder
open example.txt

# create a file
touch example.txt

# copy folder
cp source destination
cp -r folder1 folder2

# move folder
mv source destination
mv -r folder1 folder2
