# Preconfigured Jenkins

A minimal Jenkins Docker image which skips the installation wizard and installs the folowing plugins:

 * git
 * build-timeout 
 * credentials-binding
 * timestamper 
 * ws-cleanup 
 * ssh-slave

## Build

```
$ docker build -t cwansart/preconfigured-jenkins:2.190.2-alpine .
```

## Run

```
$ docker run --rm --name jenkins -p 8080:8080 cwansart/preconfigured-jenkins:2.190.2-alpine
```

## Docker Hub

You can find the image on: https://hub.docker.com/r/cwansart/preconfigured-jenkins