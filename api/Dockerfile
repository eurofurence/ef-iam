FROM php:7.4-fpm-alpine
MAINTAINER Martin Becker <kontakt@martin-becker.ovh>

RUN apk add --no-cache --virtual .build-deps curl-dev imagemagick-dev libtool libxml2-dev sqlite-dev autoconf gcc make g++ zlib-dev
RUN apk add --no-cache curl git imagemagick mysql-client libzip-dev libintl icu icu-dev oniguruma-dev
RUN pecl install imagick
RUN docker-php-ext-enable imagick
RUN docker-php-ext-install bcmath curl iconv mbstring pdo pdo_mysql pdo_sqlite pcntl tokenizer xml zip intl
RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer
RUN apk del -f .build-deps

COPY . /app/
WORKDIR /app

RUN composer install --prefer-source
