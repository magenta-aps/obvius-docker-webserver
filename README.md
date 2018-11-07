# obvius-docker-webserver
A webserver for Obvius applications, based on the `httpd` image.

Uses the file docker.yml for docker-compose.

Run following command to start the services in docker.yml
Remember to build images for services and refer to their tags in docker.yml
`docker-compose -f docker.yml up -d`

web and db services live in their respective folders.
To build web and db images run and replace {{ TAG }} with desired image tag:
`docker build -t {{ TAG }} .`

The db entrypoint is overwritten with custom entrypoint - db/entrypoint.sh
