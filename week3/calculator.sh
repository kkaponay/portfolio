#!/bin/bash

# Simple Calcultor Progam
# Enter two numbers
# Select calculation method

echo "Simple Calculator Program"
echo
echo "Please enter first number"
read a
echo "Please enter second number"
read b

echo
echo "Please select from the menu list"
echo
echo "1. Addition"
echo "2. Subtraction"
echo "3. Mutliplication"
echo "4. Division"
read choice


case $choice in 

1)
res=`echo $a + $b | bc`
;;

2) 
res=`echo $a - $b | bc`
;;

3) 
res=`echo $a \* $b | bc`
;;

4) 
res=`echo $a / $b | bc`
;; 

esac 

echo "Result : $res"