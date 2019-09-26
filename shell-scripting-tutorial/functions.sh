#!/bin/bash
#Define function

Hello(){
	echo "Hello $1 $2"
	return 10
}

#Invoke Function
Hello Prianka Chopra

#Capture value returned previously
ret=$?
echo "Return value is $ret"
