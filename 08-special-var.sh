#!/bin/bash

echo "No.of variables: $#"

echo "all variables: $@"

echo "script name is $0"
echo "currnet working directory is: $PWD"
echo "Home Diractory of Current User is : $HOME"
echo "which user is running: $USER"
echo "who is the host: $HOSTNAME"
echo "Process ID: $$"
sleep 60 &
echo "process ID of last background command: $!"