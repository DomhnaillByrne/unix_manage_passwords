#!/bin/bash

filename=servers.txt
declare -a myArray
myArray=( `cat "$filename"`)
user=$1
password=$2
arrayLength=${#myArray[@]}
newpassword=$3
export user
export password
export newpassword

for (( i = 0 ; i < ${arrayLength} ; i++))
do
   /usr/bin/expect script $user $password ${myArray[$i]} $newpassword 
done
