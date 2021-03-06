# obvius-docker-webserver
A webserver for Obvius applications, based on the `httpd` image.

Before building the web image the file `magentaCA2.key` needs to be copied to
`web/etc/apache2/certificates/`. The file can be downloaded from
https://redmine.magenta-aps.dk/projects/magenta/wiki/SSL.

web and db services live in their respective folders.
To build web and db images run and replace `{{ TAG }}` with desired image tag:
`docker build -t {{ TAG }} .`

The db entrypoint is overwritten with custom entrypoint located at `db/entrypoint.sh`.

After building the images:

Add the following repositories to web/volumes

```
www.ku.dk
obvius
tinymce3
```

Run the add_ignored.sh bash script inside web/:

```bash
sudo bash add_ignored.sh
```

Remember to build images for services and refer to their tags in docker-compose.yml.
Run following command to start the services in docker-compose.yml:

`docker-compose up -d`

##### Local https reverse proxy
To emulate https handling, copy the contents of `host_files/` to the relevant dirs on your host, rebuild certificates and enable the ku_docker site.


##### Suggested `.bashrc` aliases:
* `dcomp` runs docker-compose
```bash
alias dcomp='docker-compose up -d'
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

* `dbuild` accepts either db or web and builds the specified image. Leave blank to build both. Must be run from docker root folder
```bash
function dbuild () {
        if [ "$1" == "web" ]
        then
                docker build -t web-image web/
        elif [ "$1" == "db" ]
        then
                docker build -t db-image db/
	elif [ "$1" == "" ]
	then
		docker build -t web-image web/
		docker build -t db-image db/
        else
                echo 'Unknown image. Did you mean web or db? Leave blank to build both'
        fi
}
```

###### For debugging 

Sometimes if changes are made to the Dockerfile of the web image you risk breaking the entrypoint.
When an entrypoint is failing the container shuts down instantly denying any way of reading the logs or doing other things.

* `dbug` commits the broken state of an exploded web container and then enters a bash shell in that container. 
```bash
alias dbug='docker commit $(docker ps -a --filter "name=web" --format "{{.ID}}") my-broken-container && docker run -it my-broken-container /bin/bash '
```


