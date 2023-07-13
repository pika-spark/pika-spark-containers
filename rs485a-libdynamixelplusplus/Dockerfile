# Copyright Alexander Entinger, MSc / LXRobotics GmbH
# This docker file allows building and running of a container which dumps all received CAN frames on `stdout`.
FROM alpine:3.18

RUN apk add git g++ make cmake linux-headers && \
    cd /tmp && \
    git clone https://github.com/107-systems/libdynamixelplusplus && \
    cd libdynamixelplusplus && \
    mkdir build && \
    cd build && \
    cmake -DBUILD_EXAMPLES=ON .. && \
    make

COPY start.sh /
RUN chmod ugo+x /start.sh
ENTRYPOINT ["/start.sh"]
