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
dnf install $package -y &>> $LOGFILENAME
VALIDATE $? "$package   installation"
done



