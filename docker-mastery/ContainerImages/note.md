# Images
- All about images,the building blocks of containers
- What's in an image(and what isn't)
- Using Docker Hub registry
- Managing our local image cache

## What's In An Image(And What Isn't)
- App binaries and dependencies
- Metadata about the image data and how to run the image
- Official definition: "An Image is an ordered collection of root filesystem<br>
changes and the corresponding execution parameters for use within a container runtime."
- Not a complete OS.No kernel, kernel modules(e.g.drivers)
- Small as one file(your app binary) like a golang static binary
- Big as a Ubuntu distro with apt,and Apache,PHP,and more installed

- Image layers
- union file system
- history and inspect commands
- copy on write

## Section Overview

- Defining the problem of persistent data
- Key concepts with containers: immutable, ephemeral
- Learning and using Data Volumes
- Learning and using Bind Mounts
- Assignments

- Containers are usually immutable and ephemeral
- "immutable infrastructure":only re-deploy containers,never change
- This is the ideal scenario,but what about databases,or unique data?
- Docker gives us features to ensure these "separation of concerns"
- This is known as "persistent data"
- Two ways:Volumes and Bind Mounts
- Volumes:make special location outside of container UFS
- Bind Mounts:link container path to host path


