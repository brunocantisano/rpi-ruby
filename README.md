# rpi-ruby

RPi-compatible Docker image with [Ruby](https://www.ruby-lang.org)
![docker_logo](https://raw.githubusercontent.com/brunocantisano/rpi-ruby/master/files/docker.png)![docker_ruby_logo](https://raw.githubusercontent.com/brunocantisano/rpi-ruby/master/files/logo-ruby.png)![docker_paperinik_logo](https://raw.githubusercontent.com/brunocantisano/rpi-ruby/master/files/docker_paperinik_120x120.png)

This Docker container implements a Ruby container.

 * Raspbian base image: resin/rpi-raspbian.

## What is Ruby?

![logo](https://raw.githubusercontent.com/docker-library/docs/master/ruby/logo.png)

Ruby is a dynamic, reflective, object-oriented, general-purpose, open-source programming language. According to its authors,$

## Build Details
- [Source Project Page](https://github.com/paperinik)
- [Source Repository](https://github.com/paperinik/rpi-ruby)
- [Dockerfile](https://github.com/paperinik/rpi-ruby/blob/master/Dockerfile)
- [DockerHub] (https://registry.hub.docker.com/u/paperinik/rpi-ruby/)

## Build the Docker Image
Run all the commands from within the project root directory.

```bash
make build
```

### Run the Docker Image and get the version of the installed Ruby
```bash
make version
```

### Push the Docker Image to the Docker Hub
* First use a `docker login` with username, password and email address
* Second push the Docker Image to the official Docker Hub

```bash
make push
```
 
### Installation from [Docker registry hub](https://registry.hub.docker.com/u/paperinik/rpi-ruby/).

You can download the image with the following command:

```bash
docker pull paperinik/rpi-ruby
```

Definition
----

It is a great solution for communities and companies wanting to privately host their own chat service or for developers looking forward to build and evolve their own chat platforms.

# How to use this image

The Ruby instance starts listening on the default port of 3000 on the container.

1) If you'd like to create folder, you can run with interative mode:
```bash
    docker run -v /media/usbraid/docker/ruby:/usr/src/ruby \
               -it paperinik/rpi-ruby bash
```
----

2) If you'd like to be able to access the instance directly at standard port on the host machine, you can run with interative mode:
```bash
    docker run --name ruby 
               -p 9424:3000 \
               -v /media/usbraid/docker/ruby/dev:/usr/src/ruby \
               -d paperinik/rpi-ruby 
```
----

3) Then, access it via `http://localhost:9415` in a browser.  Replace `localhost` in `ROOT_URL` with your own domain name if you are hosting at your own domain.
