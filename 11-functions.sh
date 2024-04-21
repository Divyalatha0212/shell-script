#!/bin/bash
USERID=$(id -u)

VALIDATE(){
 if [$1 -ne 0]
then
echo "$2...FILURE"
exit 1
else 
echo "$2...SUCCESS"
fi

}

if [ $USERID -ne 0 ]
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