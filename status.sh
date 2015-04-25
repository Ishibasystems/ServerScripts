#!/bin/sh

echo -n CPU周波数:
set -f
set -- `sysctl dev.cpu.0.freq`
echo " $2MHz"

echo -n CPU温度:
set -- `sysctl kern.smp.cpus`
for cnt in `seq 0 \`expr $2 - 1\``
do
  set -- `sysctl dev.cpu.$cnt.temperature | sed -e s/C/℃/`
  echo -n " $2"
done
echo ""

echo -n HDD温度:
for cnt in `sysctl kern.disks | sed -e 's/kern.disks: //'`
do
  set -- `smartctl -l scttempsts /dev/$cnt | grep Current`
  line=$3
  if test $line ; then
    echo -n " $line℃"
  fi
done
set +f
echo ""
