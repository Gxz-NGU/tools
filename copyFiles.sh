#!/bin/bash
# copyFiles.sh

cat $1 | while read myline
do
 echo cp $myline res/$myline
 cp $myline res/$myline
done

echo cp success!
