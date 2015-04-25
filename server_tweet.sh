#!/bin/sh

tweet=`cat /dev/stdin`
line=`cat /mnt/tank/server/log.txt`

line='jexec '$line' /mnt/tweepy/server_tweet.py > /dev/null 2>&1'
echo "$tweet" | eval $line
ret=$?

if test ${ret} -eq 1 ; then
  set -f
  set -- `jls | grep tweepy`
  line=$1
  set +f

  echo $line > /mnt/tank/server/log.txt

  if test "$line" ; then
    ifconfig -l | xargs -n 1 -J % ifconfig % up
    line='jexec '$line' /mnt/tweepy/server_tweet.py'
    echo "$tweet" | eval $line
  fi
fi
