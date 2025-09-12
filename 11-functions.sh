#!/bin/bash

#functions

#it allows you to reusable code blocks, improve code organization and faciliate modular programming

USER_ID=$(id -u)

FUN_NAME(){
    echo $PWD
    echo $0
}

PACKAGES(){
    if [ $1 -eq 0 ]
    then
        echo "$2 is SUCCESS"
    else
        echo "$2 is FAILURE"
        exit 1
    fi
}

if [ USER_ID -ne 0 ]
then 
    echo "THIS IS NOT SUPER USER PLEASE CHECK"
    exit 1
else
    echo "THIS IS SUPER USER AND PROCEED FURTHER"
fi

FUN_NAME 

dnf install mysql -y
PACKAGES $? "INSTALLATION OF MYSQL"

dnf install git -y 
PACKAGES $? "INSTALLATION OF GIT"

echo "BOTH PACKAGES ARE INSTALLED"

