num=4.12334
printf "%1.2f\n" $num


arr=(1.2 2.1 3.4 4.4 5.5 6.4 7.2 8.3 9.4 10.23723)
for (( i=0;i<${#arr[@]};i++ )); do
    printf "%1.2f\t" ${arr[$i]}
done
printf "\n"