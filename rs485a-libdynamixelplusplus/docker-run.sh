#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

sudo chmod ugo+rw /dev/ttymxc1

sudo -u fio docker run -it -u 0 --device /dev/ttymxc1 pika_spark_rs485a_libdynamixelplusplus
