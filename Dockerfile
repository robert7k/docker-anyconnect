FROM ubuntu:24.04

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:mozillateam/ppa
RUN apt-get install -y firefox-esr firefox-esr-locale-de libgio-qt0 wget libxml2 xdg-utils libegl1 kmod libpci3

COPY anyconnect-linux64-4.10.07061-predeploy-k9.tar.gz .
RUN tar -xvzf anyconnect-linux64-4.10.07061-predeploy-k9.tar.gz

RUN adduser --disabled-password docker

ENTRYPOINT ["/root/docker-entrypoint.sh"]
