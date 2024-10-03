#! /bin/bash

# For loops allow you to execute statements a specific number of times:

for i in 0 1 2 3 4 5 6 7 8 9 
    do
        echo $i
done

# for loop for os file system :


for FILE in $HOME/.bash*
do
   echo $FILE
done

# for loop for strings :

for X in cyan magenta yellow  
do
    echo $X
done

# while loop :

i=1
while [[ $i -le 10 ]] ; do
   echo "$i"
  (( i += 1 ))
done