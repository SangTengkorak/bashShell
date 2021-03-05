#!/usr/bin/env bash
# SangTengkorak
# march 04 2021

# Known search syntax, automated to use variables. One parameter.
# Function 1.
onepar(){
read -p "Please input desired syntax : " keystring
# Get login user default folder.
luser=$(who am i | awk '{ print $1 }')
# Only takse last 4 number of desired string
file_id=$(echo "$keystring" | sed 's/.*\(....\).*/\1/;q')
# Create log name based on file_id
log_name=$(echo $file_id.log)
cd /home/
# Search syntax.
for i in `find {/home/logbackup/apps/,/home/logpipeline/app} -name "$service*" -type f -size +20 -newermt "$bdate 00:00:01" \! -newermt "$edate 23:59:59"`;\
 do j=$(echo $i| sed 's/\.\///g');\
 echo $i; zgrep -i "$keystring" $j;\
 done >> /home/$luser/$log_name
}

# Known seacrh syntax, automated to use variables. Two parameters.
# Function 2.
twopar(){
read -p "Please input first desired string : " keystring1
read -p "Please input second desired string : " keystring2
# Get login user default folder.
luser=$(who am i | awk '{ print $1 }')
# Only takse last 4 number of desired string
file_id=$(echo "$keystring1" | sed 's/.*\(....\).*/\1/;q')
# Create log name based on file_id
log_name=$(echo $file_id.log)
cd /home/
# Search syntax
for i in `find {/home/logbackup/apps/,/home/logpipeline/app} -name "$service*" -type f -size +20 -newermt "$bdate 00:00:01" \! -newermt "$edate 23:59:59"`;\
 do j=$(echo $i| sed 's/\.\///g');\
 echo $i; zgrep -i "$keystring1" $j;\
 grep -i "$keystring2"
 done >> /home/$luser/$log_name
}

read -p "Please input service name. (ex: phoenix, athena, saudagar) : " service
read -p "Please input begin date (format: YYYY-MM-DD) : " bdate
read -p "Please input end date (format: YYYY-MM-DD) : " edate
read -p "How many string parameter will be search (1 or 2): " stringp

case $stringp in
1) onepar;;
2) twopar;;
*) echo "Input not recognized. Exit"
exit;;
esac
