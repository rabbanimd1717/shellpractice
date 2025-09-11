#!/bin/bash
#if conditions

given_number=${11}

expected_output=${12}

if [ $given_number -ne $expected_output ]
then
    echo "print ${given_number} is equal to $expected_output"
else
    echo "print ${given_number} is not equal to $expected_output"
fi

#-eq, -ne, -gt, -lt, -ge, -le