FROM docker.io/arm64v8/ros:humble-ros-base

RUN mkdir -p /tmp/colcon/src

RUN cd /tmp/colcon/src && \
    git clone https://github.com/107-systems/l3xz_head_ctrl && \
    cd l3xz_head_ctrl && \
    git reset --hard 67204909a05cc1907d7114d1f5f4050c4c98093f

RUN cd /tmp/colcon/src && \
    git clone --recursive https://github.com/107-systems/ros2_dynamixel_bridge && \
    cd ros2_dynamixel_bridge && \
    git reset --hard 96d0dd72ebd151e597028125a3ad1693ac1b9d43

RUN cd /tmp/colcon && \
    source /opt/ros/humble/setup.bash && \
    colcon build --symlink-install && \
    . install/setup.sh
