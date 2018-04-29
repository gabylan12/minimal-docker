FROM ubuntu:16.04
MAINTAINER gabylan <gabriel.radikal@gmail.com>
RUN apt-get update
RUN apt-get install -y curl openssh-client expect
     #install docker install curl
RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh
     # docker machine
RUN curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine
RUN chmod +x /tmp/docker-machine
RUN cp /tmp/docker-machine /bin/docker-machine
     #docker compose
RUN mkdir -p /var/lib/boot2docker/bin
RUN curl -sL https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /var/lib/boot2docker/bin/docker-compose
RUN chmod +x /var/lib/boot2docker/bin/docker-compose
RUN ln -sf /var/lib/boot2docker/bin/docker-compose /usr/local/bin/docker-compose

