FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y locales && locale-gen en_US en_US.UTF-8
RUN apt-get install -y --no-install-recommends runit
RUN export > /etc/envvars && /usr/sbin/runsvdir-start
RUN apt-get install -y --no-install-recommends vim less net-tools inetutils-ping wget curl git telnet nmap socat dnsutils netcat tree htop unzip sudo software-properties-common jq psmisc iproute python ssh rsync
RUN wget -O - http://cdn.primatelabs.com/Geekbench-4.1.0-Linux.tar.gz | tar zx --strip-components=2
RUN mv Geek* /geekbench
CMD /geekbench/geekbench4
LABEL maintainer="dq@dq.gg" geekbench="4.1.0"


