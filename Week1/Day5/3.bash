grep 'echo' 1.bash
grep -i 'echo' 1.bash
grep -n 'echo' 1.bash
grep -r 'echo' ../Day5
grep -v 'echo' 1.bash
grep -E "Sum|Difference|Product" 2.bash

sed 's/echo/printf' 4.bash
sed -i 's/foo/bar/g' 4.bash
sed '/^$/d' file.txt #delete every empty line

awk '{print $2}' file.txt # Get Second column
awk '{$3 > 50}' file.txt # Filter
awk '{print "User: $2 Id:"$1}' file.txt # Formating
awk '{sum+=$3}' END {print "Totoal:", sum} file.txt