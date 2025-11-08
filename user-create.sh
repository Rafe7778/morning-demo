#!/bin/bash
#purpose-script to add a user to linux system including password

if [ $(id -u) -eq 0 ]; then
   read -p "enter username : " username
   read -s -p "enter password : " password
   egrep "^$username" /etc/passwd >/dev/null
   if [ $? -eq 0 ]; then
   echo "username exists!"
   exit 1 
else  
   pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
   useradd -m -p "$pass" "$username"
   [ $? -eq 0 ] && echo "user has been added to system!" || echo "failed to add user"
 fi
else
   echo "only root may add a user to the system."
   exit 2
fi

