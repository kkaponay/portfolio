#!/bin/bash

# Week 4, IpAddressesOnly.sh

# Executes IpInfo.sh script

# Piped using sed only it displays IP Address

# sed -n gives no output, unless specifically p written (IP Address) to print command

./IpInfo.sh | sed -n '/IP Address: / {
p
}'

# End Script