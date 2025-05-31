#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
    exit 1 # give other than 0  up to 127
else  
    echo "You are running this script with root access"
  

fi    

dnf install mysqlmddgjs -y


if [ $? -eq 0 ]
then
    echo "installing MYsql is ...success"

else
    echo "installing mysql is ..FA"
    exit 1
fi