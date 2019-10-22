# faser-docker
This repository compiles docker files and the associated components necessary to 
build docker images for FASER for the online and offline computing.  If you are 
unfamiliar with docker, we recommend you work through this tutorial - [Link to Tutorial](https://matthewfeickert.github.io/intro-to-docker/).

## Online : []()
For the online daq software.

## Offline : []()
For the offline [calypso](https://gitlab.cern.ch/faser/calypso) reconstruction 
and analysis framework.  This is largely based on the [atlas-sit](https://gitlab.cern.ch/atlas-sit/docker/tree/master)
setup, where there are nice directions and more advanced directions.

# Usage
These can be built like and docker image.  To build an image on your local machine,
go into the directory you desire to build and execute
```
cd daq
docker build -t repo/name:tag .
```
where `repo/name:tag` will be how the image shows up when you subsequently execute
```
docker images
```
on your personal machine.
