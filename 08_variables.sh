#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "pls run with root user"
    exit 1
fi


echo "Installing NGINX web server"
dnf install nginxs -y

STATUS=$?
if [ STATUS -ne 0 ]; then
    echo "NGINX installation failed"
    exit 1
else
    echo "NGINX installed successfully"
fi

