#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "ERROR::you must have sudo access to execute the script"
exit 1 #other than 0
fi
dnf list installed mysql

if [ $? -ne 0 ]
then   #not installed
   dnf install mysql -y
   if [ $? -ne 0 ]
   then 
      echo "installong mysql...:failure"
      exit 1
    else
      echo "installing mysql...:success"
    fi 
else
    echo "mysql already installed...success"
      
fi
#dnf install mysql -y

#if [ $? -ne 0 ]
#then 
#  echo "installong mysql...:failure"
#exit 1
#else
#  echo "installing mysql...:success"
#fi
dnf list installed git 
if [ $? -ne 0 ]
then
     dnf install git -y
     if [ $? -ne 0 ]
     then 
       echo "installong git...:failure"
     exit 1
     else
       echo "installing git...:success"
     fi
else
echo "git already installed....success"
fi



#if [ $? -ne 0 ]
#then 
#  echo "installong git...:failure"
#exit 1
#else
# echo "installing git...:success"
#fi
