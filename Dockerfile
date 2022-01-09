FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true

CMD ["/bin/bash"]

RUN apt-get update
RUN apt-get dist-upgrade -yqq
RUN apt-get install -yqq apt-utils sudo
RUN apt-get install -yqq lsb-release apt-transport-https ca-certificates software-properties-common wget curl netcat aria2 whois lshw htop figlet p7zip p7zip-full
RUN apt-get install -yqq language-pack-gnome-en language-pack-gnome-id dirmngr gnupg gnupg2
RUN apt-get install -yqq git bzr subversion mercurial cvs

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
