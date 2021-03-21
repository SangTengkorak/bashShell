#!usr/bin/env
# SangTengkorak
# March 21 2021

# Ask user to define remote host to run commands
read -p "Where you want to run command : " remhost

# Create logfile, with time based name. Date and HourMinute parameters.
saat=$(date +'%Y-%m-%d:%R')
touch $saat.log

# Read commands form file, and run it in remote host using SSH protocol.
while read baris; do 
  ssh $remhost $baris > $saat.log
done < simple_task.txt
