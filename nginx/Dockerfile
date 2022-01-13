FROM nginx:alpine

RUN apk add --no-cache s6 certbot certbot-nginx

RUN rm -f /etc/nginx/sites-enabled/* /etc/nginx/conf.d/*
COPY etc/ /etc/

RUN mkdir -p /var/www/static && \
    wget https://github.com/SpaceAgeMP/webstatic/archive/refs/tags/1.0.tar.gz -O /tmp/site.tar.gz && \
    tar -x -v -f /tmp/site.tar.gz --strip 1 -C /var/www/static && \
    rm -f /tmp/site.tar.gz

RUN /etc/nginx/cfips.sh

VOLUME /etc/letsencrypt

ENTRYPOINT ["s6-svscan", "/etc/s6"]
