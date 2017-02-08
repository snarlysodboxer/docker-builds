FROM ubuntu:latest
MAINTAINER david amick <docker@davidamick.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && apt-get install -qy htop tmux vim man nmap curl git-core sysstat bwm-ng iotop ipcalc mtr-tiny dnsutils inetutils-ping mysql-client postgresql-client mongodb-clients && apt-get autoclean -y && apt-get autoremove -y

ENV TERM screen-256color

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
