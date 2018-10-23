# docker-traefik-https
How to docker-traefik with https

* traefik [https://docs.traefik.io/] is load balancer that allows using docker tags to dynamically configure url for app in containers

* basic labels:

    * traefik.enable=true
    * traefik.frontend.rule=Host:traefik.valdepeace.com
    * traefik.port=8080
    * treafik.backend=traefik-monitor

* is mode swarm add label:

    * traefik.docker.network=traefik-net

Nota: so traefik router url to the container must share(traefik-container) the same network