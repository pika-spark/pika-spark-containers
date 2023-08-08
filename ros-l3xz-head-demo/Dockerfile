FROM docker.io/arm64v8/ros:humble-ros-base

RUN mkdir -p /tmp/colcon_ws/src

COPY demo.py /tmp/colcon_ws
COPY demo-bridge.py /tmp/colcon_ws
COPY start.sh /tmp/colcon_ws
RUN chmod ugo+x /start.sh

WORKDIR /tmp/colcon_ws/src

RUN git clone https://github.com/107-systems/l3xz_head_ctrl && \
    cd l3xz_head_ctrl && \
    git reset --hard 67204909a05cc1907d7114d1f5f4050c4c98093f

RUN git clone --recursive https://github.com/107-systems/ros2_dynamixel_bridge && \
    cd ros2_dynamixel_bridge && \
    git reset --hard 96d0dd72ebd151e597028125a3ad1693ac1b9d43

RUN git clone https://github.com/107-systems/ros2_loop_rate_monitor && \
    cd ros2_loop_rate_monitor && \
    git reset --hard 9ad3d202300ded6cec1f7b8f146f70a597cc0829

RUN git clone https://github.com/107-systems/ros2_heartbeat && \
    cd ros2_heartbeat && \
    git reset --hard 486cf6a77aa1bc983fef8678a6138b8e4d4dc9a7

WORKDIR /tmp/colcon_ws

RUN . /opt/ros/humble/setup.sh && \
    colcon_ws build --symlink-install && \
    . install/setup.sh

ENTRYPOINT ["/start.sh"]
