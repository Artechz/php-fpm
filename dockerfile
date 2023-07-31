# syntax=docker/dockerfile:1
FROM php:8.1-rc-fpm-alpine3.16

WORKDIR /app
RUN apk --update upgrade
RUN docker-php-ext-install pdo pdo_mysql
COPY etc/php/ /usr/local/etc/php/
