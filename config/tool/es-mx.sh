#!/bin/bash

file=""
clear
sleep 1
cat config/lang/info/pathinfo/es-mx.txt
echo ""
read -p "> " folder
echo ""
cd "$folder" && ls -a
echo ""
cat config/lang/es-mx.txt
echo ""
read -p "> " file
echo ""
cat config/lang/info/es-mx.txt
echo ""
read -p "> " format

case $format in
"1") format="mp3"
mkdir -p files/audio/mp3
echo "Elegiste convertir a .mp3"
sleep 2
ffmpeg -i "$file" "files/audio/mp3/$file converted.$format"
;;
"2") format="wav"
mkdir -p files/audio/wav
echo "Elegiste convertir a .wav"
sleep 2
ffmpeg -i "$file" "files/audio/wav/$file converted.$format"
;;
"3") format="ogg"
mkdir -p files/audio/ogg
echo "Elegiste convertir a .ogg"
sleep 2
ffmpeg -i "$file" "files/audio/ogg/$file converted.$format"
;;
"4") format="flac"
mkdir -p files/audio/flac
echo "Elegiste convertir a .flac"
sleep 2
ffmpeg -i "$file" "files/audio/flac/$file converted.$format"
;;
"5") format="m4a"
mkdir -p files/audio/m4a
echo "Elegiste convertir a .m4a"
sleep 2
ffmpeg -i "$file" "files/audio/m4a/$file converted.$format"
;;
"6") format="mp4"
mkdir -p files/video/mp4
echo "Elegiste convertir a .mp4"
sleep 2
ffmpeg -i "$file" "files/video/mp4/$file converted.$format"
;;
"7") format="avi"
mkdir -p files/video/avi
echo "Elegiste convertir a .avi"
sleep 2
ffmpeg -i "$file" "files/video/avi/$file converted.$format"
;;
"8") format="mkv"
mkdir -p files/video/mkv
echo "Elegiste convertir a .mkv"
sleep 2
ffmpeg -i "$file" "files/video/mkv/$file converted.$format"
;;
"9") format="webm"
mkdir -p files/video/webm
echo "Elegiste convertir a .webm"
sleep 2
ffmpeg -i "$file" "files/video/webm/$file converted.$format"
;;
"10") format="mov"
mkdir -p files/video/mov
echo "Elegiste convertir a .mov"
sleep 2
ffmpeg -i "$file" "files/video/mov/$file converted.$format"
;;
"11") format="wmv"
mkdir -p files/video/wmv
echo "Elegiste convertir a .wmv"
sleep 2
ffmpeg -i "$file" "files/video/wmv/$file converted.$format"
;;
"12") format="jpg"
mkdir -p files/image/jpg
echo "Elegiste convertir a .jpg"
sleep 2
ffmpeg -i "$file" "files/image/jpg/$file converted.$format"
;;
"13") format="png"
mkdir -p files/image/png
echo "Elegiste convertir a .png"
sleep 2
ffmpeg -i "$file" "files/image/png/$file converted.$format"
;;
"14") format="gif"
mkdir -p files/image/gif
echo "Elegiste convertir a .gif"
sleep 2
ffmpeg -i "$file" "files/image/gif/$file converted.$format"
;;
"15") format="svg"
mkdir -p files/image/svg
echo "Elegiste convertir a .svg"
sleep 2
ffmpeg -i "$file" "files/image/svg/$file converted.$format"
;;
"16") format="webp"
mkdir -p files/image/webp
echo "Elegiste convertir a .webp"
sleep 2
ffmpeg -i "$file" "files/image/webp/$file converted.$format"
;;
esac