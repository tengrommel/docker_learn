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