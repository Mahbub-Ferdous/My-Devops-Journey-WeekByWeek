Arithmetic Expressions
Below are the operators supported by bash for mathematical calculations:


1. +	= addition
2. -	= subtraction
3. /	= division
4. *	= exponentiation
5. %	= modulus


``` for arithmetic operations always make a variable like this:-  varName=$((operations))>>> additons=$((10+20))```

```when you echo all arethmetic operations at a time its work first modulus than division than multiply than subtraction last it will works addition```

## For decimal calculations: 

we can use `bc` command to get the output to a particular number of decimal places. `bc (Bash Calculator)` is a command line calculator that supports calculation up to a certain number of decimal points.

```echo "scale=2;22/7" | bc```

Where `scale` defines the number of decimal places required in the output.