FROM docker.io/arm64v8/ros:foxy-ros-base

RUN mkdir -p /tmp/colcon/src

RUN . /opt/ros/humble/setup.sh

RUN cd /tmp/colcon/src && \
    git clone https://github.com/107-systems/l3xz_head_ctrl && \
    git clone --recursive https://github.com/107-systems/ros2_dynamixel_bridge

RUN cd /tmp/colcon && \
    colcon build --symlink-install && \
    . /opt/dev_ws/install/setup.sh
