### Commands to run

Pull the latest version of the rh-perl526 image:  
`docker pull registry.access.redhat.com/rhscl/perl-526-rhel7:latest`

Build a new s2i base image using cpanfile in src/  
`s2i build --context-dir=src . registry.access.redhat.com/rhscl/perl-526-rhel7 s2i-baseimage`

### Sample Dockerfile
```dockerfile
FROM s2i-baseimage:latest

ENTRYPOINT ["sleep", "infinity"]
```


### Failed packages

The following packages cannot be installed using `s2i`, most likely	because	of unresolved system package dependencies:
```
#requires 'Apache2::Request';
#requires 'Apache2::FakeRequest';
#requires 'BerkeleyDB';
#requires 'DBD::Sybase';
#requires 'Image::Magick';
#requires 'SOAP::Lite';
#requires 'Term::ReadLine::Gnu';
```

