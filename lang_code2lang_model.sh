#!/usr/bin/env bash

declare -A map_codes

map_codes=( ["afr"]="af" ["arb"]="ar" ["bul"]="bg" ["ces"]="cs" ["cmn"]="zh" ["dan"]="da" ["deu"]="de" ["ell"]="el" ["est"]="et" ["eus"]="eu" ["fin"]="fi" ["fra"]="fr"
 ["heb"]="he" ["hrv"]="hr" ["hun"]="hu" ["hye"]="hy" ["ind"]="id" ["ita"]="it" ["jpn"]="ja" ["lav"]="lv" ["lit"]="lt" ["mar"]="mr" ["nld"]="nl" ["nor"]="no"
 ["pes"]="fa" ["pol"]="pl" ["por"]="pt" ["ron"]="ro" ["rus"]="ru" ["slk"]="sk" ["slv"]="sl" ["spa"]="es" ["srp"]="sr" ["swe"]="sv" ["tel"]="te" ["tur"]="tr"
 ["ukr"]="uk" ["vie"]="vi" )

echo "${map_codes["$1"]}"
