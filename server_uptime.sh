#!/bin/sh

echo サーバーの停止…
set -f
  set -- `uptime | sed -e s/,//g -e 's/:/ /g'`
  if test "$5" = "days" ; then
    line=`expr $4 * 24 + $6`:$7
  else
    line=$4:$5
  fi
  echo "稼働時間: "$line
set +f
