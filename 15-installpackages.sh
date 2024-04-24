#!/bin/bash

USERID=&(id -u) #ROOT USER

if [ $USERID -ne 0 ]
then
echo "run this script with root user."
exit 1
else
echo "you are the root user."
fi

echo "all packages are: $@"



