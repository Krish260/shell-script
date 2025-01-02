#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "you should have sudo access to execute the script"
exit 1
fi
dnf list installed mysql

if [ $? -ne 0 ]
then
   dnf install mysql -y
   if [ $? -ne 0 ]
   then
      echo "mysql installing...failure"
      exit 1
    else
      echo "mysql installing...success"
   fi
else
   echo "mysql already installed.... success"
fi