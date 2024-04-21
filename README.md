# Home Server

This project is a set of tools running over Docker and Traefik as a reverse proxy, created to be used as a home server running in a local server machine

This project includes:
  - Pihole
  - Nextcloud
  - Jellyfin
  - Jupyter
  - Traefik (As the reverse proxy)

## How to generate the SSL certificate

To the project work using https connection locally you can generate a certificate using [mkcert](https://github.com/FiloSottile/mkcert) after install on your server machine use:

```shell
mkcert -install
mkcert -cert-file traefik/certs/local-cert.pem -key-file traefik/certs/local-key.pem "<your_server_local_ip_address>"
```

### Running the project in your server

```shell
sudo chmod +x ./run.sh
./run.sh
```

