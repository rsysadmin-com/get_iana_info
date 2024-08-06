#!/bin/bash

# Some variables
iana_url=https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.txt
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

# Download $iana_url content silently and directly pipe to grep
wget -qO- $iana_url | grep $stuff_to_check | uniq
