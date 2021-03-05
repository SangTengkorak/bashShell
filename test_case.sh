#!/usr/bin/env bash
# SangTengkorak

tambah(){
read -p"Please input first number : " satu
read -p"Please input second number : " dua
tiga=$(( $satu + $dua ))
echo "$tiga"
}

kurang() {
read -p"Please input first number : " satu
read -p"Please input second number : " dua
tiga=$(( $satu - $dua ))
 echo "$tiga"
}

read -p "Please secet operation : " opt

case $opt in 
    1) tambah;;
    2) kurang;;
    *) echo "Nothing to do"
    exit;;
esac
