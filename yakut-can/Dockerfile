# Copyright Alexander Entinger, MSc / LXRobotics GmbH
FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y python3-full python3-venv python3-pip git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN pip install yakut

RUN cd /opt && git clone https://github.com/OpenCyphal/public_regulated_data_types
ENV CYPHAL_PATH="/opt/public_regulated_data_types"
