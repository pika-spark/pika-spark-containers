# Copyright Alexander Entinger, MSc / LXRobotics GmbH
# This docker file allows flashing of a Arduino Portenta X8 extension board EEPROM.
FROM alpine:3.18

RUN apk add bash git g++ make cmake linux-headers

RUN cd /tmp && \
    git clone https://github.com/pika-spark/portenta-x8-eeprom-utils && \
    cd portenta-x8-eeprom-utils && \
    mkdir build && cd build && \
    cmake .. && make install

COPY ./flash.sh /
RUN chmod +x /flash.sh

ENTRYPOINT ["/flash.sh"]
CMD ["eeprom_settings_default.txt"]
