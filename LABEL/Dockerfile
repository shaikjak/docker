FROM ubuntu:20.04

MAINTAINER maintainer="Jakeer jakeer@gmail.com"
LABEL course="Devops"

ENV duration="100hrs"

RUN apt-get update

# Copy full website (HTML + assets + images)
COPY index.html /var/www/html/
ADD "C:\Users\lenovo\Downloads\sample-1.tar" /tmp/

EXPOSE 80

CMD ["sleep", "-g", "60"]
