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