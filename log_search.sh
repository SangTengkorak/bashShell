#!/usr/bin/env bash
# Sangtengkorak

read -p "Please input service name. (ex: phoenix, athena, saudagar) : " service
read -p "Please input begin date (format: YYYY-MM-DD) : " bdate
read -p "Please input end date (format: YYYY-MM-DD) : " edate
read -p "Please input desired strings : " keystring

#luser=$(`who am i`)
# Detect user login name
luser=$(who am i | awk '{ print $1 }')

# Only takse last 4 number of desired string
file_id=$(echo "$keystring" | sed 's/.*\(....\).*/\1/;q')

# Create log name based on file_id
log_name=$(echo $file_id.log)


cd /home/

# Known seacrh syntax, automated to use variables.
for i in `find {/home/logbackup/apps/,/home/logpipeline/app} -name "$service*" -type f -size +20 -newermt "$bdate 00:00:01" \! -newermt "$edate 23:59:59"`;\
 do j=$(echo $i| sed 's/\.\///g');\
 echo $i; zgrep -i "$keystring" $j;\
 done >> /home/$luser/$log_name
