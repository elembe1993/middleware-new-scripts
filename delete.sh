#!/bin/bash
#author = alex blondel tsague elelmbe
#date = 06/182022


#this is a script that will help us delete files that are 90 days older

echo -e "here we need to enter the day: \c"
read a
echo "these are the files $a days old"
find . -type f -mtime +$a

echo "deleting"

find . -type f -mtime +$a | xargs rm -f

echo "are the files deleted or not"
find . -type f -mtime +$a
