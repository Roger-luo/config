#!/bin/bash
URL="https://github.com/todylu/monaco.ttf/blob/master/monaco.ttf?raw=true"
FILENAME=${URL##*/}
FONT_DIR=/usr/share/fonts/truetype/custom/

echo $FILENAME
echo $FONT_DIR

echo "Start install"
sudo mkdir -p $FONT_DIR

echo "Downloading font"
wget -c $URL

echo "Installing font"
mv $FILENAME $FONT_DIR

echo "Updating font cache"
sudo fc-cache -f -v

echo "Enjoy"