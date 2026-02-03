#!/bin/bash

USERID=$(id -u)
LOGFOLDER="/var/log/shell-script"
LOGFILENAME="/var/log/shell-script/$0"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

set -e 
if [ $USERID -ne 0 ]; then
    echo  -e "$R .pls run with root user $N"  | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGFOLDER
VALIDATE (){
if [ $1 -ne 0 ]; then
    echo -e"$2....$R failed $N" | tee -a $LOGS_FILE
    exit 1
else
    echo -e "$2  ....$G successfully $N" | tee -a $LOGS_FILE
fi

}   


for package in $@
do 
dnf list installed $package &>> $LOGFILENAME
if [ $? -ne 0 ]; then
echo "$package is not installed. Installing now..." | tee -a $LOGS_FILE
dnf install $package -y &>> $LOGFILENAME

#VALIDATE $? "$package   installation"
else
    echo -e "$package is already installed $Y Skipping $N"
    
fi
done



