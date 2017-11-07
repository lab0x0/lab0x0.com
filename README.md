```
## Github pages + Cloudflare option (current)

Install hugo
https://gohugo.io/getting-started/installing/

git clone https://github.com/lab0x0/lab0x0.com

Run dev server
hugo server -D

Build
hugo

### Deploy 

Push to github


## Self-hosted option

docker build --tag=nginx-le .

docker run -d --restart=always -p 80:80 -p 443:443 --network=hk -e LETSENCRYPT=true -v="$(pwd)/lab0x0.conf:/etc/nginx/lab0x0.conf" -v="$(pwd)/le.conf:/etc/nginx/le.conf" -v="$(pwd)/docs:/var/www/lab0x0.com" -v="$(pwd)/le:/etc/letsencrypt" --name=nginx-le nginx-le

### Deploy 

rsync -avzh --delete --progress ./docs/ username@lab0x0.com:~/lab0x0.com/docs

```