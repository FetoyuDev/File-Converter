#!/bin/bash

clear
sleep 1
cat ./config/lang/en-us.txt
echo ""
read -p "> " filepath
echo ""
cat ./config/lang/info/en-us.txt
echo ""
read -p "> " fileformat

case $fileformat in
"1")
fileformat="mp3"
mkdir -p ./files/audio/mp3
echo "You chose to convert to .mp3"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/mp3/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"2")
fileformat="wav"
mkdir -p ./files/audio/wav
echo "You chose to convert to .wav"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/wav/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"3")
fileformat="ogg"
mkdir -p ./files/audio/ogg
echo "You chose to convert to .ogg"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/ogg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"4")
fileformat="flac"
mkdir -p ./files/audio/flac
echo "You chose to convert to .flac"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/flac/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"5")
fileformat="m4a"
mkdir -p ./files/audio/m4a
echo "You chose to convert to .m4a"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/audio/m4a/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"6")
fileformat="mp4"
mkdir -p ./files/video/mp4
echo "You chose to convert to .mp4"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/mp4/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"6")
fileformat="avi"
mkdir -p ./files/video/avi
echo "You chose to convert to .avi"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/avi/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"7")
fileformat="mkv"
mkdir -p ./files/video/mkv
echo "You chose to convert to .mkv"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/mkv/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"8")
fileformat="webm"
mkdir -p ./files/video/webm
echo "You chose to convert to .webm"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/webm/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"10")
fileformat="mov"
mkdir -p ./files/video/mov
echo "You chose to convert to .mov"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/mov/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"11")
fileformat="wmv"
mkdir -p ./files/video/wmv
echo "You chose to convert to .wmv"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/video/wmv/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"12")
fileformat="jpg"
mkdir -p ./files/image/jpg
echo "You chose to convert to .jpg"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/jpg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"13")
fileformat="png"
mkdir -p ./files/image/png
echo "You chose to convert to .png"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/png/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"14")
fileformat="gif"
mkdir -p ./files/image/gif
echo "You chose to convert to .gif"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/gif/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"15")
fileformat="svg"
mkdir -p ./files/image/svg
echo "You chose to convert to .svg"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/svg/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
"16")
fileformat="webp"
mkdir -p ./files/image/webp
echo "You chose to convert to .webp"
sleep 2
ffmpeg -i '$(basename $filepath)' './files/image/webp/$(cut -d '.' -f 1 <<< "$(basename $filepath)").$fileformat'
;;
esac