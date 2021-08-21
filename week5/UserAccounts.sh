#!/bin/bash

# Week 5, UserAccounts.sh

# Script to format data from /etc/passwd file into a table
# Format includes table lines between columns and outer edge
# Format includes colour inclusion
# Filter apllied to display only default shells that have /bin/bash listed


awk -F: '$7~/\/[b][a-z][a-z]\/[b][a-z][a-z][a-z]/' /etc/passwd | 

awk 'BEGIN {

    FS=":";

    print "____________________________________________________________________________________________";

    print "| \033[34mUsername\033[0m         | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[34mHome\033[0m                            | \033[34mShell\033[0m             | ";

}

{
    printf("| \033[33m%-16s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-31s\033[0m | \033[35m%-17s\033[0m |\n", $1, $3, $4, $6, $7);
}
END {

    print("____________________________________________________________________________________________|");

}' 

# End script