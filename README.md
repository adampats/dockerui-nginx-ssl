
## dockerui

[DockerUI](https://github.com/crosbymichael/dockerui) is a sweet web front-end for the docker-engine / daemon.  This compose file starts an nginx front-end to secure transport + provide basic authentication, since dockerui out of the box is not secured.  The base `docker-compose.yml` setup was borrowed from the [example directory.](https://github.com/adampats/dockerui/tree/master/examples/nginx-basic-auth)

### How to use

* Generate an htpasswd file:

 > `htpasswd -nb username password > dockerui.htpasswd`

* Install [docker toolbox](https://www.docker.com/docker-toolbox) if you don't have it already.

* Run docker-compose to start the containers:

 > `docker-compose up -d`

* Get the IP of your docker-machine VM (replace default with whatever your's is called):

 > `docker-machine ip default`

* Point your browser to:

 > `https://<docker-machine IP>`
