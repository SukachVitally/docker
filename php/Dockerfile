FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install git libpq-dev postgresql-client curl
RUN apt-get -y install php7.0 \
      php7.0-opcache \
      php7.0-fpm \
      php7.0-xml \
      php7.0-pdo \
      php7.0-mbstring \
      php7.0-pgsql \
      php7.0-curl
#      php7.0-pecl-imagick 
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ \
      --filename=composer
RUN apt-get install -y nginx
ADD nginx.conf /etc/nginx/sites-available/default
RUN sed -i -e "s/listen = \/run\/php\/php7.0-fpm.sock/listen = 127.0.0.1:9000;/g" \
      /etc/php/7.0/fpm/pool.d/www.conf
VOLUME ["/opt/app/current/"]
EXPOSE 80
CMD ["php7.0-fpm", "-g", "daemon off;"]
CMD ["nginx", "-g", "daemon off;"]
COPY docker-entrypoint.sh /opt/app/docker-entrypoint.sh
RUN chmod a+x /opt/app/docker-entrypoint.sh
WORKDIR "/opt/app"
CMD "./docker-entrypoint.sh" 
