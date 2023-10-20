#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

sudo chmod ugo+rw /dev/ttyX0
sudo -u fio docker run -it -u 0 --device /dev/ttyX0 pika_spark_h7_firmware_minicom minicom -D /dev/ttyX0 -b 115200
