#!/bin/bash

#package installation

USER_ID=$(id -u) # in shell scripting to run the linux commands in shell scripting syntax=$(Linux_commands) in inside the braces we need to write

if [ USER_ID -eq 0 ]
then
    echo "Need to give super user permission to access or installing the packages"
    exit 1 #manually exit if error comes
else
    echo "This is super user and proceed further"
fi

dnf install mysql -y

if [ $? -eq 0 ]
then
    echo "MYSQL is installed"
else
    echo "MYSQl is not installed"
fi

echo "MYSQL installed"