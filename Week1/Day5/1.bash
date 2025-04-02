#! /usr/bin/bash
arr=(1 2 3 4 5 6 7 8 9 10)
for(( i=0;i<${#arr[@]};i++ )); do
    echo ${arr[$i]}
done;