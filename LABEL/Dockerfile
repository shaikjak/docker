FROM ubuntu:20.04

LABEL maintainer="Jakeer <jakeer@gmail.com>"
LABEL course="DevOps"

RUN apt-get update && \
    apt-get install -y iputils-ping && \
    apt-get clean

ENTRYPOINT ["ping"]

