#!/bin/bash
COMMAND="ls -al | more"
echo " ===========================1"
echo ${COMMAND}
echo " ===========================2"
eval ${COMMAND}	
echo " ===========================3"
#echo `${COMMAND}`	
