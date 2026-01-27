FROM ubuntu:20.04
MAINTAINER Jakeer jakeer@gmail.com
RUN yum install nginx -y
CMD ["nginx", -g , "deamon off;"]
LABEL course="Devops"
EXPOSE 80
ENV duration="100hrs"
COPY index.html /usr/share/nginx/html/index.html