FROM nginx:alpine

RUN apk add --no-cache s6

RUN rm -f /etc/nginx/sites-enabled/* /etc/nginx/conf.d/*
COPY etc/ /etc/

RUN /etc/nginx/cfips.sh

VOLUME /etc/nginx/ssl

ENTRYPOINT ["s6-svscan", "/etc/s6"]
