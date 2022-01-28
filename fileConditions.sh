#! /bin/bash

# FILE CONDITIONS
FILE="test.txt"
if [ -f "$FILE" ]
then 
    echo "$FILE is a file"
else
    echo "$FILE is not a file"
fi

#########
# -d file  True if file exists and is a directory
# -e file  True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file  True if file exists and is a regular file
# -g file  True if the group id is set on a file
# -r file  True if the file is readable
# -s file  True if the file has a non-zero size
# -u file  True if the user id is set on a file
# -w file  True if the file is writable
# -x fiel  True if the file is an executable


