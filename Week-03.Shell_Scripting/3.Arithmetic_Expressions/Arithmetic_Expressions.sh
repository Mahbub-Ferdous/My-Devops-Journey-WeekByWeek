#! /bin/bash

#for arithmetic operations always make a variable like this:-  varName=$((operations))>>> additons=$((10+20))

addition=$((10+10))
subtraction=$((10-8))
division=$((16/4))
exponentiation=$((10*2))
modulus=$((11%2))

#here all arithmetic answer:

echo $addition      #ans is 20
echo $subtraction   #ans is 2
echo $division      #ans is 4
echo $exponentiation  #ans is 20
echo $modulus         #ans is 1
 
#here is all functionalities addition:

# when you echo all arethmetic operations at a time its work first modulus than division than multiply than subtraction last it will works addition

echo $(($addition - $subtraction + $modulus * $exponentiation))     #ans is 38 >> 1st(*) than (-) than (+)


# for decimal calculations:


# we can use `bc` command to get the output to a particular number of decimal places. `bc (Bash Calculator)` is a command line calculator that supports calculation up to a certain number of decimal points.

echo "scale=2;22/7" | bc       # ans will be - 3.14

# Where `scale` defines the number of decimal places required in the output.