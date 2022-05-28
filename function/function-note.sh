#!/bin/bash

#-------------------------------------
#  sample 1: return local value
#-------------------------------------
value=1234;

function my_function() {
   local value=5678
   echo "function: value= ${value}"
}

echo "before  : value= ${value}"

# call my_function
my_function

echo "after   : value= ${value}"

#-----------------------------------------------------
#  sample 2:  add two values and return sum, use echo
#-----------------------------------------------------
#!/bin/bash

function my_function() {
   local a=$1
   local b=$2
   echo "function: value= $((b+a))"
}

# call my_function
result=$(my_function 1 2)
 
echo "my_function [ ${result} ]"


#---------------------------------------------
#  sample 3:  use return syntex
#---------------------------------------------
#!/bin/bash

function my_function() {
   echo "argv: $1 $2"
   return 100
}

# call my_function
my_function "hi" "there" result
ret=$?
 
echo "my_function [ ${ret} ]"

#---------------------------------------------
#  sample 4:  use global variable save result
#---------------------------------------------
#!/bin/bash

function my_function() {
   kkk="hi there"
}

# call my_function
my_function
 
echo "my_function [ ${kkk} ]"
