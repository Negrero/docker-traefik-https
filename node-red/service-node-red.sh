docker service create \
    --name node-red-02 \
    --label traefik.port=1880 \
    --label traefik.backend=node-red \
    --label traefik.enable=true \
    --label traefik.frontend.rule=Host:test02.valdepeace.com \
    --network traefik-proxy \
    nodered/node-red-docker
