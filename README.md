# obvius-docker-webserver
A webserver for Obvius applications, based on the `httpd` image.

Uses the file docker.yml for docker-compose.

Remember to build images for services and refer to their tags in docker.yml.
Run following command to start the services in docker.yml:
`docker-compose -f docker.yml up -d`

web and db services live in their respective folders.
To build web and db images run and replace `{{ TAG }}` with desired image tag:
`docker build -t {{ TAG }} .`

The db entrypoint is overwritten with custom entrypoint located at `db/entrypoint.sh`.

##### Suggested `.bashrc` aliases:
* `dcomp` runs docker-compose
```bash
alias dcomp='docker-compose -f docker.yml up -d'
```

* `dclean` stops all docker containers, removes them, and prunes the now unused volumes
```bash
function dclean () {
        docker stop $(docker ps -aq)
        docker rm $(docker ps -aq)
        docker volume prune -f
}
```


* `dbash` accepts a container name as a parameter and runs a bash session on the container
```bash
function dbash () {
        docker exec -it "$1" bash
}
```

