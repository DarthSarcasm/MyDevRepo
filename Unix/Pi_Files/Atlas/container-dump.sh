# This script runs a custom container to export all containers/volumes as a docker-compose file.

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock ghcr.io/red5d/docker-autocompose $(docker ps -aq) > ~/docker-compose.yml