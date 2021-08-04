#!/bin/bash

#This function prints a given error

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}


#This function will get a value between the 2nd and 3rd arguments

getNumber()

{

    read -p "$1: "

    while (( $REPLY < $2 || $REPLY > $3 )); do

        printError "Input must be between $2 and $3"

        read -p "$1: "

    if [[ $REPLY -eq 42 ]]; then
        printError "Correct"
        exit 0

    elif [[ $REPLY -lt 42 ]]; then
        printError "Too Low"

    elif [[ $REPLY -gt 42 ]]; then
        printError "Too High"
    
     elif [[ $reply -gt 42 ]]; then
        printError "Correct"
        echo "Thank You"
        exit 0
    

    fi

    done

}


echo "This is the Guessing Game!" 
echo "Can you guess the correct number?"

getNumber "please type a number between 1 and 100" 1 100
