#!/usr/bin/env bash

# download eng vectors
bash /home/luca/align-gosact/download_language_model.sh en

LANGS=$(ls /home/luca/align-gosact/gosact_chapters_sent/)

for LANG in $LANGS
do
  if [ $LANG != "eng" ]
  then
    echo "processing $LANG"
    # download language vectors
    lang_code=$(bash /home/luca/align-gosact/lang_code2lang_model.sh $LANG)
    bash /home/luca/align-gosact/download_language_model.sh "$lang_code"
    # align language
    bash /home/luca/align-gosact/align_lang.sh $LANG
    # delete language vectors
    missing=$(python3 /home/luca/align-gosact/check_alignment.py "$LANG")
    if [ $missing == "False" ]
    then
      rm /home/luca/word-vectors/cc."$lang_code".300.vec
      rm /home/luca/word-vectors/cc."$lang_code".300.bin
    fi
  fi
done
