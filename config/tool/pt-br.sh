#!/bin/bash

clear
sleep 1
cat ./config/lang/pt-br.txt
echo ""
read -p "> " filepath
echo ""
cat ./config/lang/info/pt-br.txt
echo ""
read -p "> " fileformat
case $fileformat in
"1") fileformat="mp3"
mkdir -p ./files/audio/mp3
echo "Você escolheu converter para .mp3"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/mp3/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"2") fileformat="wav"
mkdir -p ./files/audio/wav
echo "Você escolheu converter para .wav"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/wav/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"3") fileformat="ogg"
mkdir -p ./files/audio/ogg
echo "Você escolheu converter para .ogg"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/ogg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"4") fileformat="flac"
mkdir -p ./files/audio/flac
echo "Você escolheu converter para .flac"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/flac/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"5") fileformat="m4a"
mkdir -p ./files/audio/m4a
echo "Você escolheu converter para .m4a"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/m4a/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"6") fileformat="mp4"
mkdir -p ./files/video/mp4
echo "Você escolheu converter para .mp4"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/mp4/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"7") fileformat="avi"
mkdir -p ./files/video/avi
echo "Você escolheu converter para .avi"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/avi/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"8") fileformat="mkv"
mkdir -p ./files/video/mkv
echo "Você escolheu converter para .mkv"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/mkv/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"9") fileformat="webm"
mkdir -p ./files/video/webm
echo "Você escolheu converter para .webm"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/webm/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"10") fileformat="mov"
mkdir -p ./files/video/mov
echo "Você escolheu converter para .mov"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/mov/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"11") fileformat="wmv"
mkdir -p ./files/video/wmv
echo "Você escolheu converter para .wmv"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/wmv/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"12") fileformat="jpg"
mkdir -p ./files/image/jpg
echo "Você escolheu converter para .jpg"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/jpg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"13") fileformat="png"
mkdir -p ./files/image/png
echo "Você escolheu converter para .png"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/png/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"14") fileformat="gif"
mkdir -p ./files/image/gif
echo "Você escolheu converter para .gif"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/gif/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"15") fileformat="svg"
 mkdir -p ./files/image/svg
echo "Você escolheu converter para .svg"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/svg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"16") fileformat="webp"
mkdir -p ./files/image/webp
echo "Você escolheu converter para .webp"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/webp/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
esac