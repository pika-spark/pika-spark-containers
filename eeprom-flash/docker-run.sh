#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

modprobe at24

rc=$?
if [ $rc != 0 ]; then
	echo "Modprobe of at24 failed."
	exit $rc
fi

docker run -it -u 0 --privileged -v /sys/class/i2c-dev:/sys/class/i2c-dev pika_spark_eeprom_flash
