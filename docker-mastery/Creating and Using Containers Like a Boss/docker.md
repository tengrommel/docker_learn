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

# Docker Networks: DNS
- Understand how DNS is the key to easy inter-container comms
- See how it works by default with custom networks
- Learn how to use --link to enable DNS on default bridge network

**DNS default Names**
>Docker defaults the hostname to the container's name,but you can also set aliases  

- Containers shouldn't rely on IP's for inter-communication
- DNS for friendly names is built-in if you use custom networks
- Your using custom networks right?
- This gets way easier with Docker Compose in future section

# Assignment: CLI App Testing
- Use different Linux distro containers to check curl cli tool version
- Use two different terminal windows to start bash in both centos:7 and ubuntu:14.04,using -it
- Learn the docker container --rm option so you can save cleanup
- Ensure curl is installed and on latest version for that distro
    - ubuntu:apt-get update && apt-get install curl
    - centos:yum update curl
- Check curl --version
