
#! /bin/bash

# Arrays

array=("foo" "bar" "baz" "Prabin")

# Access a single element
echo ${array[1]}

# This would return the last element
echo ${array[-1]}

# This would output the total number of elements in the array
echo "${#array[@]}"

# This would output all of the elements of the array:
printf '%s\n' "${rray[@]}"