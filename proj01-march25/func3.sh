#!/usr/bin/env bash
# SangTengkorak
# March 25 2021

source func1.sh
sim_calc

source func2.sh
sim_greet

i=1

dram_dot(){
  while [ $i -le 3 ]; do
    echo -n ". ";
    sleep 1;
    i=$(( $i + 1));
    done
}

echo -n "Your number is $a, your percentage is $b, therefore"
dram_dot
echo "Your share is $c"
echo "The name based on your input is $namamu."
