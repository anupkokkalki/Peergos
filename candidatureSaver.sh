#! /bin/bash
read -p  "ENTER CANDIDATE PHONE:" CPHONE
read -p "ENTER CANDIDATE NAME:" NAME
read -p "ENTER CANDIDATE SKILL:" SKILL
read -p "ENTER CANDIDATE REFERAL:" REFERAL

echo "below details save into file candidature list"
echo "$CPHONE:$NAME:$SKILL:$REFERAL"
echo "$CPHONE:$NAME:$SKILL:$REFERAL">>emp.txt

read -p "enter file name emp.txt to see content in it:" fname
echo "-------------------------------------------------------"
cat $fname
echo "-------------------------------------------------------"
