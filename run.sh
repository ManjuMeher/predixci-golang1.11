#!/usr/bin/env bash

#docker pull asperitus/predix
#docker run -it --rm --privileged --name predix-dev -p 8080:8080 -v /dev/shm:/dev/shm --network predix-net  --entrypoint bash asperitus/predix

docker exec -it predix-dev bash

##
