#!/bin/bash

# IpAddressesOnly.sh, week4

# Executes IpInfo.sh script

# Using sed only display IP Address

# sed -n gives no output, unless specifically p written (IP Address) to print command

./IpInfo.sh | sed -n '/IP Address: / {
p
}'
