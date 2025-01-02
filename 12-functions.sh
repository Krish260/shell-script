#!/bin/bash

USERID=$(id -u)
r="\e[31m"
g="\e[32m"
y="\e[33m"
validate(){
if [ $? -ne 0 ]
   then
      echo -e "$2...$r failure"
      exit 1
    else
      echo -e "$2...$g success" 
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
   echo -e "mysql already installed.... $y successfully"
fi

dnf list installed git

if [ $? -ne 0 ]
then
   dnf install git -y
validate $? "git installing"
else
   echo -e "git already installed.... $y successfully"
fi