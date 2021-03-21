#!usr/bin/env
# SangTengkorak
# March 21 2021

read -p "Where you want to run command : " remhost
saat=$(date +'%Y-%m-%d:%R')
touch $saat.log

while read baris; do 
  ssh $remhost $baris > $saat.log
done < simple_task.txt
