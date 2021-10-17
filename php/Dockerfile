FROM php:fpm-alpine

RUN apk add --no-cache s6 zlib-dev libpng-dev jpeg-dev freetype-dev libjpeg-turbo-dev libzip-dev

RUN docker-php-ext-configure gd \
        --with-freetype \
        --with-jpeg

RUN docker-php-ext-install mysqli gd bcmath zip

ENV PUID=1000
ENV PGID=1000

COPY etc/ /etc/
ENTRYPOINT ["s6-svscan", "/etc/s6"]
