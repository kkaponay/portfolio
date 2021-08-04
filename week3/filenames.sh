#!/bin/bash

myfile="filenames.txt"

IFS=$'\n'

for i in $(cat < "$myfile");
do
echo "$i"
echo ""

if [ -d "$i" ];
then
echo "$i is  directory";

else
if [ -f "$i" ];
then
echo "$i is a file";

else
echo "$i is not valid"; 

fi
fi
done 