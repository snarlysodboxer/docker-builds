FROM ubuntu:latest
MAINTAINER david amick <docker@davidamick.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get install -qy htop tmux vim man nmap curl git-core sysstat bwm-ng iotop ipcalc mtr-tiny dnsutils inetutils-ping && apt-get autoclean -y && apt-get autoremove -y

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
