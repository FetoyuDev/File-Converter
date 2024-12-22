#!/bin/bash

file=""

clear
sleep 1
cat /home/$(whoami)/File-Converter/config/lang/info/pathinfo/pt-br.txt
echo ""
read -p "> " folder
echo ""

cd "$folder" && ls -a

echo ""
cat /home/$(whoami)/File-Converter/config/lang/pt-br.txt
echo ""
read -p "> " file
echo ""
cat /home/$(whoami)/File-Converter/config/lang/info/pt-br.txt
echo ""
read -p "> " format
case $format in
"1") format="mp3"
mkdir -p /home/$(whoami)/File-Converter/files/audio/mp3
echo "Você escolheu converter para .mp3"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/mp3/$file converted.$format"
;;
"2") format="wav"
mkdir -p /home/$(whoami)/File-Converter/files/audio/wav
echo "Você escolheu converter para .wav"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/wav/$file converted.$format"
;;
"3") format="ogg"
mkdir -p /home/$(whoami)/File-Converter/files/audio/ogg
echo "Você escolheu converter para .ogg"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/ogg/$file converted.$format"
;;
"4") format="flac"
mkdir -p /home/$(whoami)/File-Converter/files/audio/flac
echo "Você escolheu converter para .flac"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/flac/$file converted.$format"
;;
"5") format="m4a"
mkdir -p /home/$(whoami)/File-Converter/files/audio/m4a
echo "Você escolheu converter para .m4a"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/m4a/$file converted.$format"
;;
"6") format="mp4"
mkdir -p /home/$(whoami)/File-Converter/files/video/mp4
echo "Você escolheu converter para .mp4"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/mp4/$file converted.$format"
;;
"7") format="avi"
mkdir -p /home/$(whoami)/File-Converter/files/video/avi
echo "Você escolheu converter para .avi"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/avi/$file converted.$format"
;;
"8") format="mkv"
mkdir -p /home/$(whoami)/File-Converter/files/video/mkv
echo "Você escolheu converter para .mkv"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/mkv/$file converted.$format"
;;
"9") format="webm"
mkdir -p /home/$(whoami)/File-Converter/files/video/webm
echo "Você escolheu converter para .webm"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/webm/$file converted.$format"
;;
"10") format="mov"
mkdir -p /home/$(whoami)/File-Converter/files/video/mov
echo "Você escolheu converter para .mov"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/mov/$file converted.$format"
;;
"11") format="wmv"
mkdir -p /home/$(whoami)/File-Converter/files/video/wmv
echo "Você escolheu converter para .wmv"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/wmv/$file converted.$format"
;;
"12") format="jpg"
mkdir -p /home/$(whoami)/File-Converter/files/image/jpg
echo "Você escolheu converter para .jpg"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/jpg/$file converted.$format"
;;
"13") format="png"
mkdir -p /home/$(whoami)/File-Converter/files/image/png
echo "Você escolheu converter para .png"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/png/$file converted.$format"
;;
"14") format="gif"
mkdir -p /home/$(whoami)/File-Converter/files/image/gif
echo "Você escolheu converter para .gif"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/gif/$file converted.$format"
;;
"15") format="svg"
mkdir -p /home/$(whoami)/File-Converter/files/image/svg
echo "Você escolheu converter para .svg"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/svg/$file converted.$format"
;;
"16") format="webp"
mkdir -p /home/$(whoami)/File-Converter/files/image/webp
echo "Você escolheu converter para .webp"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/webp/$file converted.$format"
;;
esac