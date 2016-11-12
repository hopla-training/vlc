FROM ubuntu:14.04

MAINTAINER FRJARAUR

RUN useradd -s /bin/bash -u 9999 -g audio -m -d /home/vlc vlc && \
apt-get update -qq && \
LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive apt-get install -qq --no-install-recommends  vlc \
&& apt-get -qq autoremove \
&& rm -rf /var/lib/apt/lists/*

USER vlc

ENTRYPOINT /usr/bin/vlc
