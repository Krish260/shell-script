USERID=(id -u)
[ $USERID -ne 0 ]
echo "you should have sudo access"
dnf list installed mysql

   dnf install mysql -y
   if [ $USERID -ne 0 ]
   then
      echo "mysql installing...failure"
      exit1
   else
     echo "mysql installing...success"
   fi
else
   echo "mysql already installed.... success"
