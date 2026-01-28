FROM ubuntu:20.04

ARG APP_NAME
ARG VERSION=1.0

RUN echo "App name is $APP_NAME" > /info.txt
RUN echo "Version is $VERSION" >> /info.txt

CMD ["cat", "/info.txt"]