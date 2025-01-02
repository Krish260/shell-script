#!/bin/bash

USERID=$(id -u)
validate(){
if [ $? -ne 0 ]
   then
      echo "$2...failure"
      exit 1
    else
      echo "$2...success" 
fi  
}

if [ $USERID -ne 0 ]
then
   echo "you should have sudo access to execute the script"
exit 1
fi
dnf list installed mysql

if [ $? -ne 0 ]
then
   dnf install mysql -y
   validate $? "installing mysql"
else
   echo "mysql already installed.... successfully"
fi

dnf list installed git

if [ $? -ne 0 ]
then
   dnf install git -y
validate $? "git installing"
else
   echo "git already installed.... successfully"
fi