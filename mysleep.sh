#!/bin/bash
echo $1
hostname
i=1
while [ $i -lt $1 ]; do
    echo $i
    i=$(($i+1))
    sleep 1
done
#sleep $1