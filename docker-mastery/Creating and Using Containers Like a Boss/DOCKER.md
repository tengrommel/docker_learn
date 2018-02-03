# Check versions of our docker cli and engine   

    docker version

    docker info

# Create a Nginx(web server) container
# Learn common container management commands
# Learn Docker networking basics
# Requirements: Have latest Docker installed from last Section

- image vs. container
    - An Image is the application we want to run
    - A Container is an instance of that image running as a process
    - You can have many containers running off the same image
    - In this lecture our image will be the Nginx web server
    - Docker's default image "registry" is called Docker Hub(hub.docker.com)
- run/stop/remove containers
- check container logs and processes

sudo docker container run --publish 80:80 nginx
sudo docker container run --publish 80:80 --detach nginx
sudo docker container stop eded8a359950199cb429b13a173567cec10d5e22325d9e7683d8f555522326b9
sudo docker container ls -a
sudo docker container logs webhost