#!/bin/bash

#---------------------------------------
# sameple1:  "MM-DD-YY" type
#---------------------------------------
today=`date +%m-%d-%y`
echo $today

# result: 10-08-21

#---------------------------------------
# sample2:  "MM-YYYY" type
#---------------------------------------
today=`date +%m-%Y`
echo $today

# result: 10-2021

#---------------------------------------
# sample3: "MM/DD/YY" type
#---------------------------------------
today=`date +%D`
echo $today

# result: 10/08/21

#---------------------------------------
# sample4: get time 
#---------------------------------------
time1=`date +%T`
time2=`date +%r`
time3=`date +%H:%M`

# result1: 19:06:56
# result2: 오후 07시 06분 56초
# result3: 19:06

#---------------------------------------
# sample5: get specific date 
#---------------------------------------
yesterday=`date -d "-1 days"`
tommorrow=`date -d "+1 days"`
date=`date -d "-3 months" "+%m-%d-%Y"`

