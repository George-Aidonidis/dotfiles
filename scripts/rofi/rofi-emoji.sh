#!/bin/sh

VER='11.0'
URL="https://www.unicode.org/Public/emoji/${VER}/emoji-test.txt"
DIR="$HOME/.cache"
FILE="$DIR/emojis.txt"

if [ ! -r $FILE ]
then
  if [ ! -d $DIR ]; then mkdir $DIR; fi
  curl $URL | grep -v '^#' | grep ' ; fully-qualified ' | cut -d'#' -f2 > $FILE
fi

cat $FILE
