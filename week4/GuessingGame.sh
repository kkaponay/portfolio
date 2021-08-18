#!/bin/bash

#This function prints a given error

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}


#This function will get a value between the 2nd and 3rd arguments

number=42

getNumber()

{

    read -p "$1: "

    while (( $REPLY < $2 || $REPLY > $3 )); do

        printError "Input must be between $2 and $3"

        read -p "$1: "

    if [[ $REPLY -eq $number ]]; then
        echo "Correct"

    elif [[ $REPLY -gt $number ]]; then
        printError "Too High"

    elif [[ $REPLY -lt $number ]]; then
        printError "Too Low"
    
    fi

    done

}


echo "This is the Guessing Game!" 
echo "Can you guess the Right number?"

getNumber "Please type a number between 1 and 100" 1 100
