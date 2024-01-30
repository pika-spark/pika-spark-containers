# Copyright Alexander Entinger, MSc / LXRobotics GmbH
FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y python3-full python3-venv python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN pip install python-can

COPY flood.py /
ENTRYPOINT ["python3", "/flood.py"]
