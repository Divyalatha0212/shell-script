#!/bin/bash

USERID=&(id -u) #ROOT USER
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) #SCRIPT NAME
TIMESTAMP=$(date +%F-%H-%M-%S) #IT GIVES THE TIME 
LOGFILE=/tmp/$SCRIPT_NAME/$TIMESTAMP.log #creating the temporary directory and svae the logfiles into it.

R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "script started executing at $TIMESTAMP"

if [ $USERID -ne 0 ]
then
    echo "please run the script with root access."
    exit 1
else
    echo "your the root user"

fi  


VALIDATE(){

if [ $1 -ne 0 ]
then
    echo -e "$2 ---$R FAILURE $N"
exit 1
else
     echo -e "$2---$G SUCCESS $N" 

fi
}


dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing the MYSQL"

dnf  install docker -y
VALIDATE $? "installing the DOCKER" &>>$LOGFILE