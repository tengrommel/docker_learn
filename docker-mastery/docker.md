# docker

## Geting a Shell Inside Containers

- docker container run -it -start new container interactively
- docker container exec -it -run additional command in existing container
- Different Linux distros in containers

## Docker Networks: Concepts
- Review of docker container run -p
- For local dev/testing,networks usually "just work"
- Quick port check with docker container port <container>

## Docker Networks Defaults
- Each container connected to private virtual network "bridge"
- Each virtual network routes through NAT firewall on host IP
- All containers on a virtual network can talk to each other without -p
- Best practice is to create a new virtual network for each app:
    - network "my_web_app" for mysql and php/apache containers
    - network "my_api" for mongo and nodejs containers
    
## Docker Networks Cont.
- "Batteries included,But Removable"
    - Defaults work well in many cases,but easy to swap out parts to customize it
- Make new virtual networks
- Attach containers to more then one virtual network(or none)
- Skip virtual networks and use host IP(--net=host)
- Use different Docker network drivers to gain new abilities

# Docker Networks:CLI Management
- Show networks docker network ls
- Inspect a network docker network inspect
- Create a network docker network create --driver
- Attach a network to container docker network connect
- Detach a network from container docker network disconnect
