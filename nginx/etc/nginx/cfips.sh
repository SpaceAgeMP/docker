#!/bin/sh
set -euo pipefail

echo "real_ip_header CF-Connecting-IP;" > /etc/nginx/conf.d/cfips.conf

for ip in `curl https://www.cloudflare.com/ips-v4`
do
    echo "set_real_ip_from $ip;" >> /etc/nginx/conf.dcfips.conf
done

for ip in `curl https://www.cloudflare.com/ips-v6`
do
    echo "set_real_ip_from $ip;" >> /etc/nginx/conf.d/cfips.conf
done
