#!/bin/sh

echo "Just now Post Init Scripts running!" > /dev/ttyv0

kbdcontrol -l /mnt/tank/server/freebsd-hhkb-us.kbd
