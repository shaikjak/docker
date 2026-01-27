FROM ubuntu:20.04

LABEL maintainer="Jakeer jakeer@gmail.com"
LABEL course="Devops"

ENV duration="100hrs"

RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
