#!/bin/bash

USERID=$(id -u) #ROOT USER
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

B="\e[34m"
M="\e[35m"
N="\e[0m"

VALIDATE()
{
if [ $1 -ne 0 ] 
then
echo -e "$2---$B FAILURE $N"
else
echo -e "$2---$B SUCCESS $N"
fi


}
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
dnf list installed  $i &>>$LOGFILE
if [ $? -eq 0 ]
then
echo -e "$i already installed---$B SKIPPING $N"
else
dnf install $i -y &>>$LOGFILE
VALIDATE $? "Installation Of $i"

fi

done



