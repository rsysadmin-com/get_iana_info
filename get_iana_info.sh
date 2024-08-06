#!/bin/bash

# Some variables
iana_url=https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.txt
iana_tmp_file=/var/tmp/service-names-port-numbers.txt
stuff_to_check=$1

# Usefull function
usage() {
    echo "$(basename $0) <port||service>"
    echo "e.g.: $(basename $0) 443"
    echo "      $(basename $0) https"
    exit 1
}

# Check that we have something to check, show usage otherwise
[ -z $stuff_to_check ] && usage

# Silently download $iana_tmp_file
wget -q $iana_url -O $iana_tmp_file

# Find the port or service in $iana_tmp_file
grep $stuff_to_check $iana_tmp_file | uniq

# Clean up
rm -f $iana_tmp_file
