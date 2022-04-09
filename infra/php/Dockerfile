FROM php:7.3-fpm

ENV COMPOSER_ALLOW_SUPERUSER=1 \
  COMPOSER_HOME=/composer

COPY --from=composer:1 /usr/bin/composer /usr/bin/composer
COPY --from=node:14.2 /usr/local/bin /usr/local/bin
COPY --from=node:14.2 /usr/local/lib /usr/local/lib

RUN apt-get update && \
  apt-get -y install --no-install-recommends git unzip libzip-dev libicu-dev libonig-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-install intl pdo_mysql zip bcmath

COPY ./php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html



