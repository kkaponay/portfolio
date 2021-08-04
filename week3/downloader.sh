#!/bin/bash



while :;

do
read -p "Please type the URL of a file to download or type 'exit' to quit: " url_var 

if [ "$url_var" == "exit" ]; 
then
break;
fi

read -p "Type the location of where you would like to download the file to: " directory

filename=$(eval echo $directory)

echo $filename 

wget -P $filename $url_var

done
