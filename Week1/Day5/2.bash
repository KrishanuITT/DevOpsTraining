#! /usr/bin/bash
# a=5
# while [ $a -gt 0 ];
# do
#     echo $a
#     ((a--))
# done

# until [ $a -gt 10 ];
# do
#     echo $a
#     ((a++))
# done

a=1001
if [[ $a -gt 100 ]]; then
    echo "A is greater than 100"
else
    echo "A is less than 100"
fi