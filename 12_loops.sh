#!/bin/bash

USERID=$(id -u)
LOGFOLDER="/var/log/shell-script"
LOGFILENAME="/var/log/shell-script/$0"

if [ $USERID -ne 0 ]; then
    echo "pls run with root user"  | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGFOLDER
VALIDATE (){
if [ $1 -ne 0 ]; then
    echo "$2.... failed" | tee -a $LOGS_FILE
    exit 1
else
    echo "$2 successfully" | tee -a $LOGS_FILE
fi

}   


for package in $@
do 
dnf list installed $package &>> $LOGFILENAME
if [ $? -ne 0 ]; then
echo "$package is not installed. Installing now..." | tee -a $LOGS_FILE
dnf install $package -y &>> $LOGFILENAME
VALIDATE $? "$package   installation"
else
    echo "$package is already installed"
    
fi
done



