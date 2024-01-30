# Copyright Alexander Entinger, MSc / LXRobotics GmbH
FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y can-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
