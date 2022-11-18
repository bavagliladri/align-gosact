#!/usr/bin/env bash

LANG=$1
CHAPTERS=$(ls /home/luca/align-gosact/gosact_chapters_sent/"$LANG"/)

for CHAPTER in $CHAPTERS
do
  bash /home/luca/align-gosact/align_chapter.sh $LANG $CHAPTER
done
