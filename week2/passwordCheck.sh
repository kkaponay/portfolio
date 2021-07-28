#!/bin/bash

# Write a script named 'passwordCheck.sh' that accomplishes the following:
    # 1. Ask the user to type a secret password (hide that input).
    # 2. Check the user’s password against the hash stored in 'secret.txt'.
    # 3. If the user’s password is correct, print “Access Granted” and quit with the exit code 0.
    # 4. If the user’s password is incorrect print “Access Denied” and quit with the exit code 1.

read -sp 'Please enter password ' pass_var

echo
hash_var="$(echo $pass_var | sha256sum)" 
passhashfile="./secret.txt"

while ifs= read -r line;
do
    if [ "$hash_var" == "$line" ]
    then
        echo "Access Granted"
    else
        echo "Access Denied"
        exit 1
    fi 
done <"$passhashfile"
exit 0