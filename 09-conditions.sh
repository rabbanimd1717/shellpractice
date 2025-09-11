#!/bin/bash
#if conditions

given_number=${11}

expected_output=${12}

if [ $given_number -ne 13 ]
then
    echo "print ${given_number} is equal to 13"
else
    echo "print ${given_number} is not equal to 13"
fi

#-eq, -ne, -gt, -lt, -ge, -le