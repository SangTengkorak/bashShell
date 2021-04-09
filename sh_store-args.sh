#!/usr/bin/env bash
# SangTengkorak
# April 09 2021

# Store all args into single variable
# example: ./sh_store-args.sh nano vim net-tools
input=$*

for i in $input:
do
  # Using loop to read arg from variable and do desiren operation
  sshpass -f $HOME/pass.txt sudo apt install $i -y
done

