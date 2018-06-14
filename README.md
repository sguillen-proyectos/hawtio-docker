Hawt.io Docker
==============

This repository makes hawt.io available to docker.

In order to build this, first download the required version by executing:

```
$ cd scripts
$ ./download-jars.sh
```

For building the Docker image run:

```
$ docker build -t donkeysharp/hawtio .
```
