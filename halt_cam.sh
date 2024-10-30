#!/bin/sh
e=3
while [ $e -gt 0 ]
do
echo "Halting cam system in $e seconds"
sleep 1
e=$((e-1))
done
halt
