#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
docker build --pull --no-cache --tag pika_spark_rs485a_minicom .
