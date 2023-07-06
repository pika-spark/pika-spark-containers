#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

GPIO_CAN0_STBY=160

function finish
{
  ip link set can0 down
  echo 1 > /sys/class/gpio/gpio$GPIO_CAN0_STBY/value
  echo $GPIO_CAN0_STBY > /sys/class/gpio/unexport
}
trap finish EXIT

echo $GPIO_CAN0_STBY > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio$GPIO_CAN0_STBY/direction
echo 0 > /sys/class/gpio/gpio$GPIO_CAN0_STBY/value

ip link set can0 type can bitrate 250000
ip link set can0 up

sudo -u fio ifconfig can0

sudo -u fio sudo docker run -it -u 0 --network host pika_spark_candump_can0
