#bin/bash
USERID=$(id-u)

if [$USERID -nq 0]
then
echo "please run this script with root access"
else
echo "you are the super user"

fi

dnf install mysql -y