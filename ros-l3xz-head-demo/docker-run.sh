#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

chmod ugo+rw /dev/ttymxc1

docker run -it \
   -u 0 \
   --privileged \
   --network host \
   --device /dev/ttymxc1 \
   pika_spark_ros_l3xz_head_demo sh
