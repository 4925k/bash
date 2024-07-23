# redirection
# this will create a new file and write hello in it
# this will replace the content of the file
echo "hello" > file

# this will append hello to the file
echo "world" >> file

# cat -> read file
cat file

# concatenate files
cat file1 file2

# concatenate files and create a new file
cat file1 file2 > file3

# pipe -> pass output of one command as input to another
# ouput of command1 will be input to command2
command1 | command2

# example
ls -l | grep "file"

# find -> search for files in a directory hierarchy
# find [path] [expression]
find . -name "file"

# grep -> search for patterns in files
# grep [pattern] [file]
grep "hello" file

# grep but find everything else except the pattern
grep -v "hello" file

# awk -> pattern scanning and processing language
# awk [pattern] [file]
awk '{print $1}' file

# print last column
awk '{print $NF}' file

# print n row
awk 'NR==2' file

# sudo -> run command as superuser
sudo command

# change ownership
sudo chown user:group file

# change permissions
# chmod [permissions] [file]\
chown 777 file

# recursive
chown -R 777 directory

# change group -> chgrp
chgrp group file

# variables
# variable_name=value
name="john"

# substitute variable
echo $name

# permanent environment variable
# add this to .bashrc
export name="john"

