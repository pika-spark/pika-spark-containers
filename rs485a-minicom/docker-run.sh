#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

if [ "$#" -ge 1 ]; then
  BAUDRATE=$1
else
  BAUDRATE=115200
fi

sudo chmod ugo+rw /dev/ttymxc1

sudo -u fio docker run -it -u 0 --device /dev/ttymxc1 pika_spark_rs485a_minicom minicom -D /dev/ttymxc1 -b $BAUDRATE /root/.minirc
