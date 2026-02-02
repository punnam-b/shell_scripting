#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "pls run with root user"
    exit 1
fi

VALIDATE (){


if [ $1 -ne 0 ]; then
    echo "$2.... failed"
    exit 1
else
    echo "$2 successfully"
fi

}   

dnf install nginx -y
VALIDATE $? "NGINX installation"

dnf install mysql -y
VALIDATE $? "MYSQL installation"

dnf install nodejs -y
VALIDATE $? "NodeJS installation"
