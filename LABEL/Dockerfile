FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y iputils-ping && \
    apt-get clean

ENTRYPOINT ["ping", "google.com"]
