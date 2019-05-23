# Docker Cheat Sheet 

## Images
```Shell
docker image build        \             # build image
    --build-arg key=value \             # Dockerfile ARG value
    -t [name:tag]         \             # image tag
    -f [path]                           # Dockerfile path

docker image pull [name:tag]            # pull from registry
docker image push [name:tag]            # push to registry

docker image ls                         # list images
docker image inspect [name:tag]         # inspect image
docker image tag [old:tag] [new:tag]    # rename image
docker image rm [name:tag]              # remove image
docker image prune                      # remove unused images
```

## Containers
```Shell
docker container run   \                       # run container
    -p [port:port]     \                       # map host port to container port
    -v [volume:volume] \                       # map container volume to host path
    -e [key=value]     \                       # environment variable
    [name:tag]                                 # image name

docker container run \                         # run container
    --it --rm        \                         # interative and remove
    [name:tag]       \                         # image name
    [command]                                  # command

docker container exec \                        # execute command in container
    -w [path]         \                        # working dir
    -u [user]         \                        # run as user
    -it               \                        # interative
    [container]       \                        # container image
    [command]                                  # command

docker container attach [container]            # attach stdin/out/err to container
docker container cp [container:path] [path]    # copy file from container to host
docker container rename [old] [new]            # rename container

docker container start [container]             # start container
docker container stop [container]              # stop container
docker container restart [container]           # restart container

docker container pause [container]             # pause container
docker container unpause [container]           # unpause container

docker container ls                            # list containers
docker container stats                         # monitor containers statistics
docker container logs [container]              # see container logs
docker container inspect [container]           # inspect container
docker container port [container]              # see container port mappings
docker container top [container]               # see container running processes

docker container kill [container]              # kill container
docker container rm [container]                # remove container
docker container prune [container]             # remove stopped containers
```

## Volumes
```Shell
docker volume ls                  # list volumes
docker volume inspect [volume]    # inspect volume
docker volume rm [volume]         # remove volume
docker volume prune               # remove unused volumes
```

## Network
```Shell
docker network ls                                  # list networks
docker network inspect [network]                   # inspect network
docker network connect [network] [container]       # connect container to network
docker network disconnect [network] [container]    # disconnect container from network
docker network rm [network]                        # remove network
docker network prune                               # remove unused networks
```
 
## Dockerfile
```Dockerfile
# base image
FROM [name:tag]

# set metadata
LABEL [key]=[value]

# add build-time argument
ARG [key]=[default]

# set environment variable
ENV [key] [value]

# copy files or directories
COPY --chown=[user]:[group] [from] [to]

# create volume
VOLUME [path]

# export port
EXPOSE [port]

# set user
USER [user]:[group]

# set working directory
WORKDIR [path]

# run command
RUN [command args] && [command args]

# default command
CMD ["command", "arg1", "arg2"]

# main command
ENTRYPOINT ["command", "arg1", "arg2"]
```

## Docker-compose
```Shell
docker-compose up         # build, start and create containers
docker-compose down       # stop and remove containers

docker-compose start      # start containers
docker-compose stop       # stop containers
docker-compose restart    # restart containers

docker-compose ps         # list containers
docker-compose logs       # see logs
```

```YAML
version: [version]                  # docker-compose version

services:                           # list of services
  [name]:                           # service name
    build:                          # build image
      context: [path]               # context path
      dockerfile: [name]            # dockerfile name
      args:                         # build-time arguments
        [key]: value                # argument key=value
    image: [name:tag]               # image name
    command: [command arg1 arg2]    # image command
    container_name: [name]          # container name
    depends_on:                     # list of required services
      - [name]                      # required service name
    environment:                    # list of environmnet variables
      - [key]=[value]               # environment variable key=value
    volumes:                        # list of volumes
      - [path:path]                 # map volume to host path
    networks:                       # list of networks
      - [network]                   # network name
    healthcheck:                    # container healthcheck monitoring
      test: [command arg1 arg2]     # healthcheck test command
      interval: [time]              # test command interval execution time
      timeout: [time]               # allowed timeout for test command
      retries: [number]             # number of retries for consecutive failures
      start_period: [time]          # initialization delay

volumes:                            # create volumes
  [name]:                           # volume name

networks:                           # create networks
  [name]:                           # network name
```
