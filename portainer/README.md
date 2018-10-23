[https://portainer.readthedocs.io/en/stable/deployment.html]

# Deployment

Portainer is built to run on Docker and is really simple to deploy.

Portainer deployment scenarios can be executed on any platform unless specified.

# Quick start
Deploying Portainer is as simple as:
```
$ docker volume create portainer_data
$ docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
```
Voilà, you can now use Portainer by accessing the port 9000 on the server where Portainer is running.

Inside a Swarm cluster
Use our agent setup to deploy Portainer inside a Swarm cluster.

Note: This setup will assume that you’re executing the following instructions on a Swarm manager node.

```
$ curl -L https://portainer.io/download/portainer-agent-stack.yml -o portainer-agent-stack.yml
$ docker stack deploy --compose-file=portainer-agent-stack.yml portainer
```

Have a look at the Agent section to find more details on how to connect an existing Portainer instance to a manually deployed Portainer agent.

# Persist Portainer data
By default, Portainer store its data inside the container in the /data folder on Linux (C:\\data on Windows).

You’ll need to persist Portainer data to keep your changes after restart/upgrade of the Portainer container. You can use a bind mount to persist the data on the Docker host folder:
```
$ docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v /path/on/host/data:/data portainer/portainer
```