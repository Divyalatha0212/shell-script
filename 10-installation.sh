#bin/bash
USERID=$(id-u)

if [$USERID -nq 0]
then
echo "please run this script with root access"
exit 1
else
echo "you are the super user"
fi

dnf install mysql -y

if[$? -nq 0]
 echo "Installation of MYSQL----FAILURE"

 exit 1

 else
 echo "Installation of MYSQL-----SUCCESS"
 fi

 dnf install git -y

 if [$? -nq 0]
 echo "Installation of git---FAILURE"
 exit 1
 else
 echo "Installation of git----SUCCESS"
 fi