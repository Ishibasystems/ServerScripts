#!/bin/sh

echo "Just now Shutdown Scripts running!" > /dev/ttyv0

/sbin/ifconfig -l | /usr/bin/xargs -n 1 -J % /sbin/ifconfig % up

echo "サーバーの停止…" | /mnt/tank/server/server_tweet.sh

/sbin/ifconfig -l | /usr/bin/xargs -n 1 -J % /sbin/ifconfig % down
