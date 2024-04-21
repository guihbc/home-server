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

## Configuring Nextcloud

To the Nextcloud works with a reverse proxy you need to change the parameter [overwritewebroot](https://docs.nextcloud.com/server/latest/admin_manual/configuration_server/config_sample_php_parameters.html#overwritewebroot)
to do that you need to go into the docker volume folder

```shell
docker compose up nextcloud #just to create the volume folders
docker compose stop nextcloud
sudo nano nextcloud/data/config/config.php
```

And change/insert the parameter `overwritewebroot` as `/nextcloud` following the documentation

```php
'overwritewebroot' => '/nextcloud'
```

## Running the project in your server

Add the `.env` files with the respective environment variables values

```shell
sudo chmod +x ./run.sh
./run.sh
```
