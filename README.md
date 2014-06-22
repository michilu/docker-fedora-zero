michilu/fedora-zero
===================

Minimum Fedora docker image that nothing install

* Virtual-size is 120.8 MB
* Just install a yum tool
* Based on Fedora rawhide
* Made by supermin on docker on CoreOS

Usage
-----

To get the image michilu/fedora-zero:

    docker pull michilu/fedora-zero

or, use in the Dockerfile:

    FROM michilu/fedora-zero

Create docker image
-------------------

To create docker image, first run on the docker container:

    docker run michilu/fedora-supermin curl -L https://github.com/MiCHiLU/docker-fedora-zero/raw/master/buildcontainers.sh | sh

then, get `fedora-zero.tar.xz` file from the docker container:

    docker cp <CONTAINER ID>:/fedora-zero.tar.xz docker-fedora-zero

then, build docker image:

    docker build docker-fedora-zero
