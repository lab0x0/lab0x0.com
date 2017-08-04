```
## How to deploy this web site

git clone https://github.com/lab0x0/lab0x0.com

Please note, images and videos are not in git repository.
rsync -avzh --delete --progress ./public/ username@lab0x0.com:~/lab0x0.com/public

docker build --tag=nginx-le .

docker run -d --restart=always -p 80:80 -p 443:443 --network=hk -e LETSENCRYPT=true -v="$(pwd)/lab0x0.conf:/etc/nginx/lab0x0.conf" -v="$(pwd)/public:/var/www/lab0x0.com" -v="$(pwd)/le:/etc/letsencrypt" --name=nginx-le nginx-le