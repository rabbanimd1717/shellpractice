#!/bin/bash

#Data types

#ARRAYS. In shell scripting we are using mostly arrays only

#index [0,1,2]

#size 1,2,3

PLAYERS=("Raina" "kohli" "iyer")

echo $0

echo "My fav player is: ${PLAYERS[0]}"
echo "All players is: ${PLAYERS[@]}"