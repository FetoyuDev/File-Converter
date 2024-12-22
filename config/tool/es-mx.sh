#!/bin/bash

file=""
clear
sleep 1
cat /home/$(whoami)/File-Converter/config/lang/info/pathinfo/es-mx.txt
echo ""
read -p "> " folder
echo ""
cd "$folder" && ls -a
echo ""
cat /home/$(whoami)/File-Converter/config/lang/es-mx.txt
echo ""
read -p "> " file
echo ""
cat /home/$(whoami)/File-Converter/config/lang/info/es-mx.txt
echo ""
read -p "> " format

case $format in
"1") format="mp3"
mkdir -p /home/$(whoami)/File-Converter/files/audio/mp3
echo "Elegiste convertir a .mp3"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/mp3/$file converted.$format"
;;
"2") format="wav"
mkdir -p /home/$(whoami)/File-Converter/files/audio/wav
echo "Elegiste convertir a .wav"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/wav/$file converted.$format"
;;
"3") format="ogg"
mkdir -p /home/$(whoami)/File-Converter/files/audio/ogg
echo "Elegiste convertir a .ogg"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/ogg/$file converted.$format"
;;
"4") format="flac"
mkdir -p /home/$(whoami)/File-Converter/files/audio/flac
echo "Elegiste convertir a .flac"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/flac/$file converted.$format"
;;
"5") format="m4a"
mkdir -p /home/$(whoami)/File-Converter/files/audio/m4a
echo "Elegiste convertir a .m4a"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/audio/m4a/$file converted.$format"
;;
"6") format="mp4"
mkdir -p /home/$(whoami)/File-Converter/files/video/mp4
echo "Elegiste convertir a .mp4"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/mp4/$file converted.$format"
;;
"7") format="avi"
mkdir -p /home/$(whoami)/File-Converter/files/video/avi
echo "Elegiste convertir a .avi"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/avi/$file converted.$format"
;;
"8") format="mkv"
mkdir -p /home/$(whoami)/File-Converter/files/video/mkv
echo "Elegiste convertir a .mkv"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/mkv/$file converted.$format"
;;
"9") format="webm"
mkdir -p /home/$(whoami)/File-Converter/files/video/webm
echo "Elegiste convertir a .webm"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/webm/$file converted.$format"
;;
"10") format="mov"
mkdir -p /home/$(whoami)/File-Converter/files/video/mov
echo "Elegiste convertir a .mov"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/mov/$file converted.$format"
;;
"11") format="wmv"
mkdir -p /home/$(whoami)/File-Converter/files/video/wmv
echo "Elegiste convertir a .wmv"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/video/wmv/$file converted.$format"
;;
"12") format="jpg"
mkdir -p /home/$(whoami)/File-Converter/files/image/jpg
echo "Elegiste convertir a .jpg"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/jpg/$file converted.$format"
;;
"13") format="png"
mkdir -p /home/$(whoami)/File-Converter/files/image/png
echo "Elegiste convertir a .png"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/png/$file converted.$format"
;;
"14") format="gif"
mkdir -p /home/$(whoami)/File-Converter/files/image/gif
echo "Elegiste convertir a .gif"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/gif/$file converted.$format"
;;
"15") format="svg"
mkdir -p /home/$(whoami)/File-Converter/files/image/svg
echo "Elegiste convertir a .svg"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/svg/$file converted.$format"
;;
"16") format="webp"
mkdir -p /home/$(whoami)/File-Converter/files/image/webp
echo "Elegiste convertir a .webp"
sleep 2
ffmpeg -i "$file" "/home/$(whoami)/File-Converter/files/image/webp/$file converted.$format"
;;
esac