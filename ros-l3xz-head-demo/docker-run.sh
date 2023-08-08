#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

docker run -it -u 0 --privileged --network host pika_spark_ros_l3xz_head_demo sh
