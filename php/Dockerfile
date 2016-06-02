FROM ubuntu:16.04
MAINTAINER Sukach Vitaly <sukach.v.v@gmail.com>
RUN apt-get -y update
RUN apt-get -y install php7.0 \
      php7.0-opcache \
      php7.0-fpm \
      php7.0-xml \
      php7.0-pdo \
      php7.0-mbstring \
      php7.0-pgsql
#      php7.0-pecl-imagick 
RUN apt-get install -y nginx
ADD nginx.conf /etc/nginx/sites-available/default
VOLUME ["/opt/forevr/current/"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
