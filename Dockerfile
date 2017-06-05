#FROM php:7.1-fpm-alpine
FROM php:7.0-fpm-alpine

ENV PHPREDIS_VERSION 3.0.0

RUN mkdir -p /usr/src/php/ext/redis \
    && curl -L https://github.com/phpredis/phpredis/archive/$PHPREDIS_VERSION.tar.gz | tar xvz -C /usr/src/php/ext/redis --strip 1 \
    && echo 'redis' >> /usr/src/php-available-exts \
    && docker-php-ext-install redis

ADD phpcustom.conf /usr/local/etc/php-fpm.d
ADD www.conf /usr/local/etc/php-fpm.d

ADD src/ /

