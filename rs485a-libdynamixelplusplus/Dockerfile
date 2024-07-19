# Copyright Alexander Entinger, MSc / LXRobotics GmbH
FROM alpine:3.18

RUN apk add git g++ make cmake linux-headers && \
    cd /tmp && \
    git clone https://github.com/107-systems/libdynamixelplusplus && \
    cd libdynamixelplusplus && \
    mkdir build && \
    cd build && \
    cmake -DBUILD_EXAMPLES=ON .. && \
    make

ENV PATH='$PATH:/tmp/libdynamixelplusplus/build'
