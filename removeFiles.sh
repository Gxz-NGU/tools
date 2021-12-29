#!/bin/bash
# removeFiles.sh

cat $1 | while read myline
do
 echo rm -rf $myline
 rm -rf $myline
done

echo remove success!