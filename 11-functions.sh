#!/bin/bash
USERID=$(id -u)

VALIDATE(){
echo "exit status $1"
echo "What are you doing $2"

}

if [ &USERID -ne 0 ]
then
echo " please run this in root "
exit 1
else
echo "you are the root user"
 fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git -y
VALIDATE $? "Installing Git"