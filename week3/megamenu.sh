#!/bin/bash 

# megammenu.sh, week3
# expansion of menu.sh, week2 script to include further menu options
# required to check password created from passwordCHeck.sh, week2
# if password is incorrect, access denied
# if password in correct, access granted
# contunies to execute until user selects exit as the option
# improvement to make user friendhly though font and colour

# Colour and Font code variables menu

Green="\033[32m"
Blue="\033[34m"
Red="\e[0;31m"
Blink="\e[5m"
Reset="\e[0m"

# Check password previously created and hashed

/home/student/scripts/portfolio/week2/passwordCheck.sh

# Display menu option, with colour and font variables

while [ $? -eq 0 ];
do

figlet -f slant "Select an option:" 

echo -e "${Green}1. Create a folder" 

echo "2. Copy a folder" 

echo "3. Set a password" 

echo "4. Calculator"

echo "5. Create Week Folders"

echo "6. Check Filenames"

echo "7. Download a File"

echo -e "${Blue}8. Exit${Reset}"

echo 

# User selects option and runs seperate scripts
# Menu continues to display until user selects 8 to exit

read useroption 

case $useroption in 

1) 
echo
/home/student/scripts/portfolio/week2/foldermaker.sh 

;; 

2) 
echo
/home/student/scripts/portfolio/week2/foldercopier.sh 

;; 

3) 
echo
/home/student/scripts/portfolio/week2/setPassword.sh 

;; 

4)
echo
/home/student/scripts/portfolio/week3/calculator.sh

;;

5)
/home/student/scripts/portfolio/week3/megafoldermaker.sh
read
;;

6)
echo
/home/student/scripts/portfolio/week3/filenames.sh

;;

7)
echo
/home/student/scripts/portfolio/week3/downloader.sh

;;

8) break

;; 

*)
echo -e "${Red}${Blink}Invalid option, please choose between 1 and 8${Reset}"
;;

esac 

done
