#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root."
  exit 1
fi

docker run -it -u 0 --privileged -v /sys/class/i2c-dev:/sys/class/i2c-dev pika_spark_i2c_tools_sh sh
