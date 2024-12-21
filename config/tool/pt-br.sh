#!/bin/bash

clear
sleep 1
cat ~/File-Converter/config/lang/pt-br.txt
echo ""
read -p "> " filepath
echo ""
cat ~/File-Converter/config/lang/info/pt-br.txt
echo ""
read -p "> " fileformat
case $fileformat in
"1") fileformat="mp3"
mkdir -p ~/File-Converter/files/audio/mp3
echo "Você escolheu converter para .mp3"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/audio/mp3/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"2") fileformat="wav"
mkdir -p ~/File-Converter/files/audio/wav
echo "Você escolheu converter para .wav"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/audio/wav/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"3") fileformat="ogg"
mkdir -p ~/File-Converter/files/audio/ogg
echo "Você escolheu converter para .ogg"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/audio/ogg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"4") fileformat="flac"
mkdir -p ~/File-Converter/files/audio/flac
echo "Você escolheu converter para .flac"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/audio/flac/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"5") fileformat="m4a"
mkdir -p ~/File-Converter/files/audio/m4a
echo "Você escolheu converter para .m4a"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/audio/m4a/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"6") fileformat="mp4"
mkdir -p ~/File-Converter/files/video/mp4
echo "Você escolheu converter para .mp4"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/video/mp4/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"7") fileformat="avi"
mkdir -p ~/File-Converter/files/video/avi
echo "Você escolheu converter para .avi"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/video/avi/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"8") fileformat="mkv"
mkdir -p ~/File-Converter/files/video/mkv
echo "Você escolheu converter para .mkv"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/video/mkv/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"9") fileformat="webm"
mkdir -p ~/File-Converter/files/video/webm
echo "Você escolheu converter para .webm"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/video/webm/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"10") fileformat="mov"
mkdir -p ~/File-Converter/files/video/mov
echo "Você escolheu converter para .mov"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/video/mov/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"11") fileformat="wmv"
mkdir -p ~/File-Converter/files/video/wmv
echo "Você escolheu converter para .wmv"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/video/wmv/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"12") fileformat="jpg"
mkdir -p ~/File-Converter/files/image/jpg
echo "Você escolheu converter para .jpg"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/image/jpg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"13") fileformat="png"
mkdir -p ~/File-Converter/files/image/png
echo "Você escolheu converter para .png"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/image/png/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"14") fileformat="gif"
mkdir -p ~/File-Converter/files/image/gif
echo "Você escolheu converter para .gif"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/image/gif/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"15") fileformat="svg"
mkdir -p ~/File-Converter/files/image/svg
echo "Você escolheu converter para .svg"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/image/svg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"16") fileformat="webp"
mkdir -p ~/File-Converter/files/image/webp
echo "Você escolheu converter para .webp"
sleep 2
ffmpeg -i '$(basename $filepath)' '~/File-Converter/files/image/webp/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
esac