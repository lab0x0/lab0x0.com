#!/bin/sh

echo creating / cpdating certificates at $(date --utc)
certbot certonly -t -n --agree-tos --renew-by-default --email "0xff@lab0x0.com" --webroot -w /var/www/lab0x0.com/ -d "lab0x0.com" -d "www.lab0x0.com"
echo "certificates updated"

echo "activating nginx config"    
rm -f /etc/nginx/conf.d/default.conf
ln -s /etc/nginx/lab0x0.conf /etc/nginx/conf.d/default.conf
echo "nginx configured"