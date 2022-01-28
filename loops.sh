
#! /bin/bash

# SIMPLE FOR LOOP
# NAMES="Prabin Pawan Arpan Anup"
# for NAME in $NAMES
#   do
#     echo "Hello $NAME"
# done


# FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES  
#   do
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./test.txt"