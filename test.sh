

#!/bin/bash
# This is my first shell script
a=10
b=20
COURSE="Linux"
Action="Sleep"

echo "Value of a and b are: $a and $b"
echo "$COURSE"
echo  "{$Action}-ing"
echo  "$Actioning" "Doesnt echo nonavailable var Actioning, but can be declared"
echo  "Today date is `date +%D`"
echo "Today date is: $(date +%D)"

echo  "#of file in wrkDir using pipeSym: $(ls | wc -l)"
echo  "#of file in wrkDir using pipeSym: `$(ls | wc -l)`"
echo "#of Lines in test.sh `cat test.sh | wc -l`"
