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