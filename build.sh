#!/bin/sh
file=`cat /var/lib/jenkins/workspace/Database_repo/arguments_temp`
while read line 
do
echo "Files to be built are :"
echo $line
done < $1/release
