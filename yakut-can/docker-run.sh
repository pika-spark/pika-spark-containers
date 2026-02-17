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
  echo "Usage: sudo ./docker-run.sh can0 | can1 [bitrate] [mtu] [node_id]"
  exit 1
fi

if [ "$#" -ge 2 ]; then
  CAN_BITRATE=$2
else
  CAN_BITRATE=250000
fi

if [ "$#" -ge 3 ]; then
  CAN_MTU=$3
else
  CAN_MTU=8
fi

if [ "$#" -ge 4 ]; then
  CAN_NODE_ID=$4
else
  CAN_NODE_ID=42
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

echo "CAN_MTU     = $CAN_MTU"
echo "CAN_NODE_ID = $CAN_NODE_ID"

sudo -u pika sudo docker run -it -u 0 --network host pika_spark_yakut_can yakut --transport "CAN(can.media.socketcan.SocketCANMedia('$CAN',$CAN_MTU),$CAN_NODE_ID)" monitor
