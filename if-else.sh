#!/bin/bash
echo "Enter username"
read username

echo "Enter password"
read password

if [[ ( $username == "admin" && $password == "pass123" ) ]];

then

echo "valid credential"

else

echo "invalid credential"

fi
