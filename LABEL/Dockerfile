FROM ubuntu:20.04

LABEL maintainer="Jakeer jakeer@gmail.com"
LABEL course="Devops"

ENV duration="100hrs"

RUN apt-get update

# Copy full website (HTML + assets + images)
COPY index.html /var/www/html/
ADD sample-1.tar /tmp/

EXPOSE 8083

CMD ["google.com"]
ENTRYPOINT ["ping", "-C5"]
