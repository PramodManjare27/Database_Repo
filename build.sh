#!/bin/sh

if [ -z "$1" ]
then
file=`cat /var/lib/jenkins/workspace/Database_repo/arguments_temp`
else
file=$1
fi

ARTIFACTS_HOME=/artifacts/
 
while read line 
do
echo "Files to be built are :"
echo $file/$line
if [ ! -d "$ARTIFACTS_HOME/database/staging/$$" ]
then
mkdir -p "$ARTIFACTS_HOME/database/staging/$$"
fi
cp $file/$line $ARTIFACTS_HOME/database/staging/$$/
done < $file/release

echo "Creating the artifacts for mentioned files"

cd $ARTIFACTS_HOME/database/staging/$$/

tar  -cvf database_build_SNAPSHOT_$$.tar ./*
gzip database_build_SNAPSHOT_$$.tar
mv database_build_SNAPSHOT_$$.tar.gz ..
echo "$ARTIFACTS_HOME/database/staging/database_build_SNAPSHOT_$$.tar.gz" > /var/lib/jenkins/workspace/Database_repo/arguments_temp
