#!/bin/bash

USERID=$(id -u) #ROOT USER

if [ $USERID -ne 0 ]
then
echo "run this script with root user."
exit 1
else
echo "you are the root user."
fi

for i in $@
do
echo "packages to install: $i"
done



