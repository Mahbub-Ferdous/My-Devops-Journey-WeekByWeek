# Numeric Comparison logical operators:

Comparison is used to check if statements evaluate to true or false. We can use the below shown operators to compare two statements:

1. Equality             :num1 `-eq` num2 --------> is num1 equal to num2
2. Greater than equal to:num1 `-ge` num2 --------> is num1 greater than equal to num2
3. Greater than	        :num1 `-gt` num2 --------> is num1 greater than num2
4. Less than equal to	:num1 `-le` num2 --------> is num1 less than equal to num2
5. Less than	        :num1 `-lt` num2 --------> is num1 less than num2
6. Not Equal to	        :num1 `-ne` num2 --------> is num1 not equal to num2


## if code structure:

if [ conditions ]
    then
         commands
fi

## if else code structure:

if [[ condition ]]
then
    statement
elif [[ condition ]]; then
    statement 
fi

## if elif else code structure:

if [[ condition ]]
then
    statement
elif [[ condition ]]; then
    statement 
else
    statement
fi


we can use AND `-a` and OR `-o` as well.
