#!/usr/bin/env bash

# download eng vectors
bash /home/luca/align-gosact/download_language_model.sh en

LANGS=$(ls /home/luca/align-gosact/gosact_chapters_sent/)

for LANG in $LANGS
do
  # download language vectors
  lang_code=$(bash lang_code2lang_model.sh $LANG)
  bash /home/luca/align-gosact/download_language_model.sh "$lang_code"
  # align language
  bash /home/luca/align-gosact/align_lang.sh $LANG
  # delete language vectors
  rm /home/luca/word-vectors/cc."$lang_code".300.vec
  rm /home/luca/word-vectors/cc."$lang_code".300.bin
done
