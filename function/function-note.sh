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

#---------------------------------------------
#  sample 2:  add two values and return sum
#---------------------------------------------
#!/bin/bash

function my_function() {
   local a=$1
   local b=$2
   echo "function: value= $((b+a))"
}

# call my_function
result=$(my_function 1 2)
 
echo "my_function [ ${result} ]"
