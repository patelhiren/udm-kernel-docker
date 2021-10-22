#!/bin/sh

docker run --rm -it -v "$(pwd)"/src:/src $(docker build -t udm-kernel-docker:latest -q .)
docker rmi udm-kernel-docker

# docker stop udm-kernel
# docker rm udm-kernel
# docker rmi udm-kernel-docker
# docker build -t udm-kernel-docker:latest .
# docker run --name udm-kernel -d -it -v "$(pwd)"/src:/src udm-kernel-docker
# docker exec -it udm-kernel /bin/bash
# docker run --name udm-kernel -v "$(pwd)"/src:/src udm-kernel-docker