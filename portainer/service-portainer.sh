docker service create \
    --name portainer \
    --label traefik.port=9000 \
    --label traefik.backend=portainer \
    --label traefik.enable=true \
    --label traefik.frontend.rule=Host:portainer.valdepeace.com \
    --label traefik.docker.network=traefik-net \
    --network traefik-net \
    -p 9000:9000 \
    --mount type=bind,source=/var/run/docker.sock,destination=/var/run/docker.sock \
    --mount type=volume,source=portainer,destination=/data,volume-label="name=portainer" \
    portainer/portainer
