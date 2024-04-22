#!/bin/bash
USERID=$(id -u)
TIMESTAMP=($date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." F1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log


VALIDATE(){

        if [ $1 -ne 0 ]
   then
        echo "$2...FAILURE"
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
VALIDATE $? "Installing MYSQL" &>> $LOGFILE

dnf install git -y &>> $LOGFILE
VALIDATE $? "Installing Git"