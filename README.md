# Certbot with CloudFlare plugin

Build:

```bash
make
```

Deploy:

```bash
make deploy
```

Receive certificate:

```bash
docker run -it --rm \
  -v "$(pwd)/data/ssl:/etc/letsencrypt" \
  -v "$(pwd)/conf/ssl/cloudflare.ini:/cf.ini" \
  snipter/certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials /cf.ini \
  --server https://acme-v02.api.letsencrypt.org/directory \
  -d smartapp.com.ua \
  -d *.smartapp.com.ua
```

Renew:

```bash
docker run -it --rm \
  -v "$(pwd)/data/ssl:/etc/letsencrypt" \
  -v "$(pwd)/conf/ssl/cloudflare.ini:/cf.ini" \
  snipter/certbot renew
```