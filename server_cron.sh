#!/bin/sh

# CPU周波数/CPU温度/HDD温度
/mnt/tank/server/status.sh | /mnt/tank/server/server_tweet.sh

# zpoolステータス取得
line=`zpool status tank`

# zpoolステータス - スクラブ状況
echo "$line" | grep "scan: scrub in" > /dev/null 2>&1
if test $? -eq 0 ; then
  echo "$line" | /mnt/tank/server/zpool_resilver.sh | /mnt/tank/server/server_tweet.sh
fi

# zpoolステータス - 再構築状況
echo "$line" | grep "scan: resilver in" > /dev/null 2>&1
if test $? -eq 0 ; then
  echo "$line" | /mnt/tank/server/zpool_resilver.sh | /mnt/tank/server/server_tweet.sh
fi
