#!/bin/bash

# this script will install mysql if the user is root user
USERID=$(id -u) # get the user id of the current user

if [ $USERID -ne 0 ] # if user id is not equal to 0
then
    echo "ERROR:: please run this script with root access" # if not equal to 0 then print this message
else  
    echo "You are running this script with root access" # if equal to 0 then print this message
  

fi    

dnf install mysql -y # install mysql