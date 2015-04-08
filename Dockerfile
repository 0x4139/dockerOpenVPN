FROM ubuntu:precise

MAINTAINER Vali Malinoiu <0x4139@gmail.com>

RUN echo deb http://archive.ubuntu.com/ubuntu/ precise main universe > /etc/apt/sources.list.d/precise.list

RUN apt-get update -q

RUN apt-get install -qy openvpn iptables socat curl

ADD ./bin /usr/local/sbin

VOLUME /etc/openvpn

EXPOSE 443/tcp 8080/tcp

CMD run
