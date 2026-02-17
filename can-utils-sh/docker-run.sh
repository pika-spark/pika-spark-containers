#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

if [ "$#" -ge 1 ]; then
  CAN=$1
else
  echo "Usage: sudo ./docker-run.sh can0 | can1 [bitrate]"
  exit 1
fi

if [ "$#" -ge 2 ]; then
  CAN_BITRATE=$2
else
  CAN_BITRATE=250000
fi

echo "Configuring $CAN for a bitrate of $CAN_BITRATE bits/s"

function finish
{
  ip link set $CAN down
}
trap finish EXIT

ip link set $CAN type can bitrate $CAN_BITRATE
ip link set $CAN up
ifconfig $CAN txqueuelen 64

sudo -u pika ifconfig $CAN

sudo -u pika sudo docker run -it -u 0 --network host pika_spark_can_utils_sh sh
