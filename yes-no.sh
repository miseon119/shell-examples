#!/bin/bash

set -e 

while true; do
    read -p "Do you wish to install this program(y/n)? " yn
    case $yn in
        [Yy]* ) echo $yn; break;;
        [Nn]* ) echo $yn; break;;
        * ) echo "Please answer yes or no.";;
    esac
done
