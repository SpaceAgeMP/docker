FROM nginx:alpine

RUN rm -f /etc/nginx/sites-enabled/* /etc/nginx/conf.d/*
COPY etc/nginx/ /etc/nginx/

VOLUME /etc/nginx/ssl
