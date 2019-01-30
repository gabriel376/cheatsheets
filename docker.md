# Docker Cheat Sheet 

## Images
* Pull: `docker pull [name:tag]`
* Remove: `docker rmi [name:tag]`
* Build: `docker build -t [name:tag] .`
* List: `docker images`
* Inspect: `docker inspect [name:tag]`

## Containers
* Run: `docker run -p [port] -v [volume] -e [env] [name:tag]`
* Execute: `docker exec -it [container] [command]`
* Run and Execute: `docker run --rm -it [name:tag] [command]`
* Stop: `docker stop [container]`
* Remove: `docker rm [container]`
* List: `docker container ls -a`
* Inspect: `docker inspect [container]`
* Prune: `docker container prune`

## Volumes
* List: `docker volume ls`
* Prune: `docker volume prune`
* Inspect: `docker volume inspect [volume]`

## Network
* List: `docker network ls`
* Prune: `docker network prune`
* Inspect: `docker volume inspect [volume]`
 
## Monitoring
* Logs: `docker logs --tail [lines] -t [container]`
* Stats: `docker stats`
* List: `docker ps`

## Dockerfile
* From base image: `FROM [name:tag]`
* Add metadata: `LABEL [key]=[value]`
* Add argument when building image: `ARG [key]=[default]`
* Set environment variable: `ENV [key] [value]`
* Copy directory or file: `COPY --chown=[user]:[group] [from] [to]` 
* Create volume: `VOLUME [path]`
* Expose port: `PORT [port]`
* Set user and group: `USER [user]:[group]`
* Set work directory: `WORKDIR [path]`
* Run command when building image: `RUN [command args] && [command args]`
* Execute command when running container: `ENTRYPOINT ["command", "arg1", "arg2"]`
* Default command when running container: `CMD ["command", "arg1", "arg2"]`
