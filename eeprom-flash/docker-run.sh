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

GPIO_EEPROM_WRITE_PROTECT=88

function finish
{
  echo 1 > /sys/class/gpio/gpio$GPIO_EEPROM_WRITE_PROTECT/value
  echo $GPIO_EEPROM_WRITE_PROTECT > /sys/class/gpio/unexport
}
trap finish EXIT

echo "Disable write protect for EEPROM"
echo $GPIO_EEPROM_WRITE_PROTECT > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio$GPIO_EEPROM_WRITE_PROTECT/direction
echo 0 > /sys/class/gpio/gpio$GPIO_EEPROM_WRITE_PROTECT/value

docker run -it -u 0 --privileged -v /sys/class/i2c-dev:/sys/class/i2c-dev pika_spark_eeprom_flash
