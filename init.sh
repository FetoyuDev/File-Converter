#!/bin/bash

clear
sleep 1
cat ./info.txt
echo ""
read -p "> " lang

case $lang in
"1") sh ./config/tool/en-us.sh
;;
"2") echo "Work In Progress" && exit
;;
"3") echo "Work In Progress" && exit
;;
"4") echo "Work In Progress" && exit
;;
"5") echo "Work In Progress" && exit
;;
"6") echo "Work In Progress" && exit
;;
"7") echo "Work In Progress" && exit
esac