# Copyright Alexander Entinger, MSc / LXRobotics GmbH
# This docker file allows building and running of a container which dumps all received CAN frames on `stdout`.
FROM debian:stable-slim
RUN apt update && apt install python3-full python3-venv python3-pip git -y
RUN cd /opt && mkdir yakut && cd yakut
RUN python3 -m venv env
RUN env/bin/pip install yakut
RUN cd /opt && git clone https://github.com/OpenCyphal/public_regulated_data_types

COPY setup_yakut.sh /
RUN chmod ugo+x /setup_yakut.sh
ENTRYPOINT ["/setup_yakut.sh"]
