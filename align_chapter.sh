#!/usr/bin/env bash

SRC_LANG=$1
TGT_LANG="eng"

LANG_MODEL=$(bash /home/luca/align-gosact/lang_code2lang_model.sh "$1")

CHAPTER=$2

src_text="/home/luca/align-gosact/gosact_chapters_sent/"$SRC_LANG"/"$CHAPTER""
tgt_text="/home/luca/align-gosact/gosact_chapters_sent/eng/"$CHAPTER""

src_vec="/home/luca/word-vectors/cc."$LANG_MODEL".300.vec"
src_bin="/home/luca/word-vectors/cc."$LANG_MODEL".300.bin"
tgt_vec="/home/luca/word-vectors/cc.en.300.vec"
tgt_bin="/home/luca/word-vectors/cc.en.300.bin"

/home/luca/vecalign/vecalign.py --alignment_max_size 8 --src "$src_text" --tgt "$tgt_text" \
   --src_embed "$src_vec" "$src_bin" \
   --tgt_embed "$tgt_vec" "$tgt_bin" > /home/luca/align-gosact/aligned/"$SRC_LANG"/"$CHAPTER"
