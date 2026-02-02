#!/bin/bash

USERID=$(id -u)
if [ $USERID -nq 0]; then

echo "pls run with root user"
fi


echo "Installing NGINX web server"
dnf install nginx -y


