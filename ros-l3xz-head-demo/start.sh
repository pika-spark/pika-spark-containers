#!/bin/sh
cd tmp/colcon_ws
. /opt/ros/humble/setup.sh
. install/setup.sh
ros2 launch demo.py
