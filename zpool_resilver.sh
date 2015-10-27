#!/bin/sh

line=`cat /dev/stdin`

echo RAID-Z2: 再構築中
set -f
  set -- `echo "$line" | grep -A 2 "scan: resilver in" | sed -e s%/s%B/s% -e s/,// -e 's/h/ /' -e s/m//`
  echo "進行状況: ${24}"
  echo "作業速度: ${17}"
  echo "残り時間: ${18}":`printf %02d ${19}`
set +f
