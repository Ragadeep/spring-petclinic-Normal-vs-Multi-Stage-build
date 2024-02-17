# Spring PetClinic Sample Application [![Build Status](https://github.com/spring-projects/spring-petclinic/actions/workflows/maven-build.yml/badge.svg)](https://github.com/spring-projects/spring-petclinic/actions/workflows/maven-build.yml)

## Normal Vs Multi stage Docker Build size
```
<img width="481" alt="image" src="https://github.com/Ragadeep/spring-petclinic-Normal-vs-Multi-Stage-build/assets/39906721/75381656-274c-41c9-b042-3957709a0401">
```

## Understanding the Spring Petclinic application with a few diagrams
<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

## Building a Container

You can build a container image (if you have a docker daemon) either using the Spring Boot build plugin or Dockerfile in this repository

```
./mvnw spring-boot:build-image
```
```
docker build -t raga/spring-petclinic:latest .
```

## Running as a Container
```
docker run -d -p 80:8080 --name web raga/spring-petclinic:latest
```

## Reference for Petclinic Project
```
https://github.com/spring-projects/spring-petclinic
```
