#! /bin/bash

# name="Krishanu"
# echo "Hello, $name."

# read name
# echo "Hello, $name! Welcome to Shell Scripting."

# name=$1
# echo "Hello, $name! Welcome to Shell Scripting."

# fn=$1
# ln=$2
# echo "Hello, $fn $ln! Welcome to Shell Scripting."

# fn=${1:-"User"}
# ln=${2:-"Group"}
# echo "Hello, $fn $ln! Welcome to Shell Scripting."

# echo "Hello, $USER! Your system is ready."


# n1=$1
# n2=$2

# echo "Sum: $((n1 + n2))"
# echo "Difference: $((n1 - n2))"
# echo "Product: $((n1 * n2))"
# echo "Quotient: $((n1 / n2))"

# read number
# echo $number
# if (($number > 0)); then
#     echo "Number is positive."
# elif (($number < 0)); then
#     echo "Number is negative."
# else
#     echo "Number is zero"
# fi

# read string1
# read string2

# if [[ "$string1" == "$string2" ]]; then
#     echo "Strings are equal"
# else
#     echo "Strings are Different"
# fi

# read string
# if [[ $string == "" ]]; then
#     echo "String is empty"
# else
#     echo "String is not empty"
# fi

# read filename
# if [[ -e $filename ]]; then
#     echo "File exists"
# else
#     echo "File does not exist"
# fi

# read directory
# if [[ -d $directory ]]; then
#     echo "Directory exists"
# else
#     echo "Directory Does not exist."
# fi


# read number
# if (( number%2==0 )); then
#     echo "Number is even"
# else
#     echo "Number is odd"
# fi

# read n1 n2 n3

# if (( $n1 > $n2 && $n1 > $n3)); then
#     echo "$n1 is largest"
# elif (( $n2 > $n1 && $n2 > $n3 )); then
#     echo "$n2 is largest"
# else
#     echo "$n3 is largest"
# fi

# read num

# if (( num < 2 )); then
#     echo "$num is NOT a prime number."
#     exit 0
# fi

# is_prime=1
# for (( i=2; i*i<=num; i++ )); do
#     if (( num % i == 0 )); then
#         is_prime=0
#         break
#     fi
# done

# if (( is_prime == 1 )); then
#     echo "$num is a prime number."
# else
#     echo "$num is NOT a prime number."
# fi