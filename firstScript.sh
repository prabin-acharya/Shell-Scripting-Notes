#! /bin/bash


# chmod +x filename.sh
# To add executable permission to the fille

# Adding #!/bin/bash as the first line of your script, tells the OS to invoke the specified shell to execute the commands 
# that follow in the script.
# "#!" is often referred to as a "hash-bang", "she-bang" or "sha-bang".


# ECHO COMMAND
# echo Hello World!

# VARIABLES
# UPPERCASE BY CONVENTION
# Letters, numbers, underscores
# NAME="Prabin"
# echo "My name is $NAME"
# echo "My name is ${NAME}"

# USER INPUT
# read -p "ENter your name: " NAME2
# echo "Hello, ${NAME2} nice to meet you!"

# SIMPLE IF STATEMENT
# NAME3="Pawan"
# if [ "$NAME3" == "Pawan" ]
# then
#     echo "Your name is Pawan"
# fi

# IF-ELSE
# NAME4="Arpan"
# if [ "$NAME4" == "Arpann" ]
# then
#     echo "Your name is Arpan"
# else
#     echo "Your name is not Arpan"
# fi


# ELSE-IF(elif)
# NAME5="Aaradhya"
# if [ "$NAME5" == "Anup" ]
# then
#     echo "Your name is Anup"
# elif [ "$NAME5" == "Aaradhya" ]
# then
#     echo "Your name is Aaradhya"
# else
#     echo "Your name is not Anup or Aaradhya"
# fi


# COMPARISON
# -eq equal to
# -ne not equal to
# -gt greater than
# -ge greater than or equal to
# -lt less than
# -le less than or equal to
# NUM1=51
# NUM2=7
# if [ "$NUM1" -gt "$NUM2" ]
# then 
#     echo "$NUM1 is greater than $NUM2"
# else
#     echo "$NUM1 is less than $NUM2"
# fi



#CASE STATEMENT
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in 
  [yY] | [yY][eE][sS])
    echo "You can have a beer :)"
    ;;
  [nN] | [nN][oO])
    echo "Sorry, no drinking"
    ;;
  *)
    echo "Please enter y/yes or n/no"
    ;;
esac
