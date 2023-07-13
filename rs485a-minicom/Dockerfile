# Copyright Alexander Entinger, MSc / LXRobotics GmbH
# This docker file allows building and running of a container which dumps all received CAN frames on `stdout`.
FROM alpine:3.18

RUN apk add minicom

COPY .minirc /root
