from php:7.4-apache
RUN a2enmod rewrite

RUN apt-get update && apt-get install -y git zip unzip

RUN docker-php-ext-install pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /var/www/html/