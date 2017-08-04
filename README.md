```
## How to deploy this web site

Please note, images and videos are not in git repository.
rsync -avzh --delete --progress ./public/ username@lab0x0.com:~/lab0x0.com

docker run -d --restart=always -p 80:80 --network=hk -v="$(pwd)/default.conf:/etc/nginx/conf.d/default.conf" -v="$(pwd)/lab0x0.com:/var/www/lab0x0.com" --name=nginx nginx:1.13-alpine
```
