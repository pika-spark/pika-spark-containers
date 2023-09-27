# Copyright Alexander Entinger, MSc / LXRobotics GmbH
# This docker file allows building and running of a container which dumps all received CAN frames on `stdout`.
FROM debian:stable-slim
RUN apt update && apt install python3-full python3-venv python3-pip git -y
RUN cd /opt && mkdir yakut && cd yakut

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN pip install yakut

RUN cd /opt && git clone https://github.com/OpenCyphal/public_regulated_data_types
ENV CYPHAL_PATH="/opt/public_regulated_data_types"
