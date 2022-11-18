#!/usr/bin/env bash

if [ ! -f /home/luca/word-vectors/cc."$1".300.bin ]
then
  wget -P /home/luca/word-vectors/ https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/cc."$1".300.bin.gz
  echo "g-unzipping "$1" bin file"
  gzip -d /home/luca/word-vectors/cc."$1".300.bin.gz
fi

if [ ! -f /home/luca/word-vectors/cc."$1".300.vec ]
then
  wget -P /home/luca/word-vectors/ https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/cc."$1".300.vec.gz
  echo "g-unzipping "$1" vec file"
  gzip -d /home/luca/word-vectors/cc."$1".300.vec.gz
fi
