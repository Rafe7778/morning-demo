#!/bin/bash

valid=true
count=1

while [ $valid ]
do
echo $count
if [ $count -eq 5 ];
then
echo "the loop is over as the condition is satisfied"
break
fi
((count++))
done
