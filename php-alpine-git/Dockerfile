FROM php:7.2.0-alpine

RUN apk update && apk add git wget unzip autoconf build-base

# Don't enable xdebug here, only in dev
RUN pecl update-channels && pecl install xdebug

