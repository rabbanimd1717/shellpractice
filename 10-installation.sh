#!/bin/bash

#package installation

dnf install mysql -y

if [ $? -eq 0 ]
then
    echo "MYSQL is installed"
else
    echo "MYSQl is not installed"
fi