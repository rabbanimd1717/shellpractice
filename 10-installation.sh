#!/bin/bash

#package installation

USER_ID=$(id -u) # in shell scripting to run the linux commands in shell scripting syntax=$(Linux_commands) in inside the braces we need to write

if [ $USER_ID -ne 0 ]
then
    echo "Need to give super user permission to access or installing the packages"
    exit 1 #manually exit if error comes
else
    echo "This is super user and proceed further"
fi

dnf install mysql -y

if [ $? -eq 0 ]
then
    echo "MYSQL is installation SUCCEESS"
else
    echo "MYSQl Installation FAILURE"
    exit 1
fi

echo "MYSQL installed"

echo $?

dnf install git -y

if [ $? -ne 0 ]
then
    echo "GIT INSTALLATION IS FAILURE"
    exit 1
else
    echo "GIT INSTALLATION IS SUCCESS"
fi 

echo "GIT IS INSTALLED"