#!/bin/bash

USERID=$(id -u) #ROOT USER
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILES=/tmp/$SCRIPTNAME-$TIMESTAMP.log

B="e\[33m"
M="\e[35m"
N="\e[0m"

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
dnf instaaled  $i &>>$LOGFILES
if [ $? -eq 0 ]
then
echo "$i already installed---$B SKIPPING $N"
echo "$i Not installed---$M SHOULD INSTALL $N"
fi

done



