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

## How it looks like

Pihole
![Captura de tela 2024-04-21 193734](https://github.com/guihbc/home-server/assets/112268375/0b4e50c9-6cbe-4023-b005-afeddc0087f5)

Nextcloud
![Captura de tela 2024-04-21 193923](https://github.com/guihbc/home-server/assets/112268375/c9c8200b-6902-4a09-807f-691dd4bcecc3)

Jellyfin
![Captura de tela 2024-04-21 194014](https://github.com/guihbc/home-server/assets/112268375/c576a8e8-ab91-4abb-89cf-9aa4352e0aed)

Jupyter
![Captura de tela 2024-04-21 194105](https://github.com/guihbc/home-server/assets/112268375/d3a0d514-7e1f-41d2-b0c3-ae2e77fb61ca)

