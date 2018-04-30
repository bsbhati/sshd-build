FROM ubuntu:xenial 

MAINTAINER Bhawani Bhati <bhwani@chokhi.com>

RUN apt-get update 

RUN apt-get install -y openssh-server

RUN  mkdir -p /var/run/sshd

ONBUILD ADD sshd_config /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D

USER  nobody

WORKDIR /tmp 

ENV foobar "Hello World!"

EXPOSE 2222
