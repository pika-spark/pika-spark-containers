#!/bin/sh
export PATH="$PATH:/tmp/libdynamixelplusplus/build/examples/example-01-ping"
echo "Starting example-01-ping ..."
example-01-ping /dev/ttymxc1 2000000
