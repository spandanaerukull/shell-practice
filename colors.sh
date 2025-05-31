#!/bin/bash

USERID=$(id -u)
R=\e[31m"
G=\e[32m"
B=\e[34m"
Y=\e[33m"
N=\e[0m"


if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: please run this script with root access $N"
else  
    echo -e "You are running this script with root access"
  

fi    

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "MY SQL is not installed ..going to install it"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo "installing MYsql is ...success"
    else
        echo "installing mysql is ..FA"
        exit 1
    fi

else    
    echo "MY SQL is already installed .. nothing to do"

    
fi