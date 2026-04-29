# Docker Cheat Sheet

## Example workflow

```bash
# Pull Ubuntu image
docker pull ubuntu:22.04

# Run container interactively
docker run -it --name mytest ubuntu:22.04 /bin/bash

# Inside container: install packages
apt update && apt install -y git python3 python3-pip

# Exit container
exit

# Commit container changes to new image
docker commit mytest myubuntu:custom
```
## Building images

```bash
# Building from a Dockerfile in "." location (source)
# -t tag an image (image_name:version)
# -f specify a custom filepath (-f ./Dockerfile.dev)
# -- no-cache build image without using cache
# --build-arg pass build time variables

docker build -t image_name:version .
```

## Pulling & Running images

```bash
# Pull an image from Docker Hub
docker pull ubuntu:22.04

# Run a container interactively
docker run -it ubuntu:22.04 /bin/bash

# Run a container in the background (detached)
docker run -d --name mycontainer ubuntu:22.04

# Run a container in the background (detached) with port mapping port number 8000
docker run -d -p 8000:8000 --name mycontainer ubuntu:22.04 

# List running containers
docker ps

# List all containers (running + stopped)
docker ps -a
```

## Container management

```bash
# Stop a container
docker stop mycontainer

# Start a stopped container
docker start -ai mycontainer   # -a attach, -i interactive

# Remove a container
docker rm mycontainer
```

## Managing images

```bash
# List local images
docker images 

# Remove an image
docker rmi ubuntu:22.04
```

## Docker Compose basics

```bash
# Start services defined in docker-compose.yml
docker compose up

# Run in detached mode
docker compose up -d

# Stop services
docker compose down

# Build or rebuild images
docker compose build
```

## Volume and port mapping

```bash
# Run container with port mapping and volume
docker run -d -p 8080:80 -v ~/myapp:/app --name webserver nginx

# Explanation:
# -p 8080:80 → maps host port 8080 to container port 80
# -v ~/myapp:/app → mounts local folder into container
```
