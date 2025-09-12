#! /bin/bash
read -p "Enter 1st number:" a
read -p "Enter 2nd number:" b
echo "-----------------"

sum=`expr $a + $b`
echo "The sum is : $sum"
 
echo "-----------------"
echo "using expr"

sum=$(expr $a + $b)
echo "The sum: $sum"
echo "-----------------"


echo "using let"
let sum=a+b 
echo "The sum: $sum"
echo "-----------------"

echo "using $(())"

sum = $((a + b))
echo "The sum: $sum"

echo "-----------------"

echo "using $[]"
sum = $[a + b]
echo "The sum: $sum"
echo "-----------------"

echo "The digit adder 4 digit"


#! /bin/bash   # This tells the system to run the script using the bash shell

read -p "Enter Any 4-digit Integer Number:" n  
# 'read -p' displays a prompt and stores the user input in variable 'n'

a=$( echo $n | cut -c 1 )  
# 'cut -c 1' extracts the 1st character from input 'n' (the 1st digit)

b=$( echo $n | cut -c 2 )  
# Extracts the 2nd character (digit)

c=$( echo $n | cut -c 3 )  
# Extracts the 3rd digit

d=$( echo $n | cut -c 4 )  
# Extracts the 4th digit

echo "The Sum of 4 digits : $[a+b+c+d]"  
# Uses arithmetic expansion to add a+b+c+d and prints the result
