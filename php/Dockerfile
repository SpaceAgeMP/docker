FROM php:fpm-alpine

RUN apk add --no-cache zlib-dev libpng-dev jpeg-dev freetype-dev libjpeg-turbo-dev

RUN docker-php-ext-configure gd \
        --with-freetype \
        --with-jpeg

RUN docker-php-ext-install mysqli gd
