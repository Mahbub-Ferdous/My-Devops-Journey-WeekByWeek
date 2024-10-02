#! /bin/bash

read a
read b
read c


# if statement :

if [$a -e $b]
than
    echo a is equal to b
elif [$a -gt $b]
    than
    echo a is greater than b
else [$a -lt $b]
    than
    echo a is less than b
fi 



# we can use AND (-a) and OR (-o) as well.

if [$a -ne $b -o $a -e $b]
    than 
        echo "true"
    elif [$a -gt $b -a $b -ge $c]
        than 
            echo "elif true"
        else
            than
                echo "false"
fi
