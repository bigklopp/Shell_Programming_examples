#!/bin/sh

COMMAND="ls -al"

echo "====================1"
echo ${COMMAND}
echo "====================2"
eval ${COMMAND}
echo "====================3"
echo `${COMMAND}`
