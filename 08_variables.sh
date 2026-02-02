#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "pls run with root user"
    exit 1
fi


echo "Installing NGINX web server"
dnf install nginx -y



