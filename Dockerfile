FROM ubuntu
MAINTAINER ODELLYA (community@odellya.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/odellyagit/static-website-example.git /var/www/html/
ENTRYPOINT [ "/usr/sbin/nginx", "daemon off;" ] 