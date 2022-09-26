FROM nginx:alpine

RUN apk add --no-cache s6 certbot certbot-nginx

RUN rm -f /etc/nginx/sites-enabled/* /etc/nginx/conf.d/*
COPY etc/ /etc/

VOLUME /etc/letsencrypt

ENTRYPOINT ["s6-svscan", "/etc/s6"]
