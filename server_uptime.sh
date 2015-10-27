#!/bin/sh

echo サーバーの停止…
set -f
  echo -n 稼働時間:
  set -- `uptime | sed -e s/,//g -e 's/:/ /g'`
  if test "$5" = "days" ; then
    line=`expr $4 * 60 + $6`:$7
  else
    line=$4:$5
  fi
  echo " "$line
set +f
