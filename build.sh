#!/bin/sh
while read line 
do
echo :Files to be built are :"
echo $line
done < $1/release
