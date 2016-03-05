michilu/fedora-zero
---

Minimum Fedora docker image that nothing install

* Virtual-size is 120.8 MB
* Just install a yum tool
* Based on Fedora rawhide
* Made by supermin on docker on CoreOS

# Usage

To get the image michilu/fedora-zero:

    $ docker pull michilu/fedora-zero

or, use in the Dockerfile:

    FROM michilu/fedora-zero

## You must be install dnf

Now, the `yum` was departure, so install the `dnf` package on docker container, first:

    $ yum install dnf

# Create docker image

To create docker image, first run on the docker container:

    $ docker run michilu/fedora-supermin

then, get `fedora-zero.tar.xz` file from the docker container:

    $ docker cp <CONTAINER ID>:/fedora-zero.tar.xz .

then, build docker image:

    $ cat fedora-zero.tar.xz | docker import -
    $ docker images
    REPOSITORY    TAG       IMAGE ID        CREATED          VIRTUAL SIZE
    <none>        <none>    c4e626cd398a    0 seconds ago    120.5 MB
