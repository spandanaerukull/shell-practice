#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
else  
    echo "You are running this script with root access"
  

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