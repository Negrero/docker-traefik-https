[https://docs.traefik.io/user-guide/docker-and-lets-encrypt/]

On the Docker host, run the following command:


docker network create web
Now, let's create a directory on the server where we will configure the rest of Traefik:


```mkdir -p /opt/traefik```

Within this directory, we're going to create 3 empty files:

```
touch /opt/traefik/docker-compose.yml
touch /opt/traefik/acme.json && chmod 600 /opt/traefik/acme.json
touch /opt/traefik/traefik.toml
```