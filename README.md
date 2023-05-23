# faser-docker

### __This is an unofficial mirror for the original faser/docker repository at cern. Please refer to the repo at [Original project](https://gitlab.cern.ch/faser/docker) for any recent developments or issues__
<br>
This repository compiles docker files and the associated components necessary to 
build docker images for FASER for the online and offline computing.  If you are 
unfamiliar with docker, we recommend you work through this tutorial - [Link to Tutorial](https://matthewfeickert.github.io/intro-to-docker/).

All this repo is doing currently is building the online, from the top level Dockerfile, though both subdirectories are included for (hopefully) future use.

## Online : [docker-daq](./docker-daq)
For the online daq software.

## Offline : [docker-offline](./docker-offline)
For the offline [calypso](https://gitlab.cern.ch/faser/calypso) reconstruction 
and analysis framework.  This is largely based on the [atlas-sit](https://gitlab.cern.ch/atlas-sit/docker/tree/master)
setup, where there are nice directions and more advanced directions.

**This is in the works since it currectly depends on all of athena and makes an image which is 30 Gb**

# Usage

## Building Images
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

## Using Images
To use the image, you will need to `pull` it from the registry that is associated
to this repository and then `run` it.  To see the images that are available, you
are referred to the [container registry](https://gitlab.cern.ch/faser/docker/container_registry).
Start by pulling the image (this will pull the latest version)
```
docker pull gitlab-registry.cern.ch/faser/docker/daq:master
```
and then boot this up on your computer
```
docker run --rm -it -v $PWD:$PWD gitlab-registry.cern.ch/faser/docker/daq:master
```
which uses the following arguments
  - `--rm` : When you exit the container, it will not persist.  This keeps the memory footprint of Docker down.
  - `-it` : Two arguments that make it the docker session interactive, otherwise it will jump in and out.
  - `-v $PWD:$PWD` : This is volume mounting the current working directory within the image.  So if you are on `/Users/meehan/work/FASER` on your computer, then in the image, this same path (and all of the stuff contained within it) will be available within the image.  You can read and write to it and it will modify the files on your laptop.

But if you are like "I don't get it" I would really encourage you to work through the tutorial linked at the top.

## Authenticating
Now, remember, if you are on your laptop it knows nothing about your credentials for being able
to work with the GitLab registry, so you may need to login and authenticate if its your first time.
This requires something like :
```
docker login gitlab-registry.cern.ch
```
and then you should enter your normal CERN credentials.


