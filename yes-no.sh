#!/bin/bash

set -e 

# sample 1
while true; do
    read -p "Do you wish to install this program(y/n)? " yn
    case $yn in
        [Yy]* ) echo $yn; break;;
        [Nn]* ) echo $yn; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# sample 2
echo "Do you wish to install this program?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install; break;;
        No ) exit;;
    esac
done

