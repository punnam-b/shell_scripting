#!/bin/bash

echo  "Please Enter user name::"
read USER_NAME 
echo "user name is ${USER_NAME}"
echo "Hello, ${USER_NAME} how are you doing today?"


echo "Please enter passwrord::"
read -s PASSWORD
echo "Password is set to $PASSWORD"
echo "Welcome, $USER_NAME! Your password has been set."
