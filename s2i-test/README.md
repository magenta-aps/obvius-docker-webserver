### Commands to run

Pull the latest version of the rh-perl526 image:
`docker pull registry.access.redhat.com/rhscl/perl-526-rhel7:latest`

Build a new s2i base image using cpanfile in src/
`s2i build --context-dir=src . registry.access.redhat.com/rhscl/perl-526-rhel7 obvius-rhel-s2i-baseimage`

This image contains the Obvius and KU source code as well as any dependencies that can be installed
without special configuration options.

Build a new obvius-rhel image and push to Magenta registry (run the command from this project's root directory):  
`./build_tag_and_push.sh obvius-rhel`

This builds an image based on the above with additional dependencies that requires extra installation.
This image will also have symlinks and directory structures set up for a "classic" Obvius environment.

After the above steps are complete Obvius images can be built from the obvius-rhel image:

### Sample Dockerfile
```dockerfile
FROM obvius-rhel:latest

CMD ["sleep", "infinity"]
```
