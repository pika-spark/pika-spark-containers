# Copyright Alexander Entinger, MSc / LXRobotics GmbH
# This docker file allows flashing of a Arduino Portenta X8 extension board EEPROM.
FROM alpine:3.18

RUN apk add git g++ make cmake linux-headers

RUN cd /tmp && \
    git clone https://github.com/pika-spark/portenta-x8-eeprom-utils && \
    cd portenta-x8-eeprom-utils && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make install

COPY eeprom_settings.txt /

RUN eepmake eeprom_settings.txt eeprom_settings.eep

COPY start.sh /
RUN chmod ugo+x /start.sh
ENTRYPOINT ["/start.sh"]
