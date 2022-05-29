#-----------------------------------------------------------------
# sample 1: check a directory empty
#-----------------------------------------------------------------

#!/bin/bash
FILE=""
DIR="/dir"
# init
# look for empty dir 
if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
else
    echo "$DIR is Empty"
fi
# rest of the logic

#-----------------------------------------------------------------
# sample 2: check curent pwd/directory 
#-----------------------------------------------------------------

#!/bin/bash
echo "Script executed from: ${PWD}"

BASEDIR=$(dirname $0)
echo "Script location: ${BASEDIR}"


#---------------------------------------------------------------------------
# sample 3: check files number but not include hidden files or directories
#---------------------------------------------------------------------------
$(ls | wc -l)

#---------------------------------------------------------------------------
# sample 4: Check if File Exists
#---------------------------------------------------------------------------
FILE=/etc/resolv.conf
if test -f "$FILE"; then
    echo "$FILE exists."
fi
#-----------------------------
FILE=/etc/resolv.conf
if [ -f "$FILE" ]; then
    echo "$FILE exists."
fi
#-----------------------------
FILE=/etc/resolv.conf
if [[ -f "$FILE" ]]; then
    echo "$FILE exists."
fi
#-----------------------------
FILE=/etc/resolv.conf
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
fi

#---------------------------------------------------------------------------
# sample 5: Check if Directory Exist
#---------------------------------------------------------------------------
FILE=/etc/docker
if [ -d "$FILE" ]; then
    echo "$FILE is a directory."
fi
#---------------------------------------------------------------------------
# sample 6: Check if Directory Not Exist
#---------------------------------------------------------------------------
FILE=/etc/docker
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist."
fi

#---------------------------------------------------------------------------
# sample 7: Check if Multiple Files Exist
#---------------------------------------------------------------------------
if [ -f /etc/resolv.conf -a -f /etc/hosts ]; then
    echo "Both files exist."
fi
#--------------------------------------------------------
if [[ -f /etc/resolv.conf && -f /etc/hosts ]]; then
    echo "Both files exist."
fi

