# Certbot with CloudFlare plugin

Build:

```bash
make
```

Deploy:

```bash
make deploy
```

Use:

```
dc run -it --rm -v "$(pwd)/data/ssl:/etc/letsencrypt" -v "$(pwd)/cloudflare.ini:/cf.ini" snipter/certbot renew
```