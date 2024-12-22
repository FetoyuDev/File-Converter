#!/bin/bash

clear
sleep 1
cat ./info.txt
echo ""
read -p "> " lang

case $lang in
"1") sh ./config/tool/en-us.sh
;;
"2") sh ./config/tool/es-mx.sh
;;
"3") echo "Work In Progress" && exit
;;
"4") echo "Work In Progress" && exit
;;
"5") echo "Work In Progress" && exit
;;
"6") sh ./config/tool/pt-br.sh
;;
"7") echo "Work In Progress" && exit
esac