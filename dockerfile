FROM ubuntu:20.04

LABEL maintainer="Jakeer jakeer@gmail.com"
LABEL course="Devops"

ENV duration="100hrs"

RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copy full website (HTML + assets + images)
COPY index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
