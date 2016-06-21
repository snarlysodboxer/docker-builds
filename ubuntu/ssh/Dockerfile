FROM ubuntu:12.04
MAINTAINER david amick <docker@davidamick.com>

RUN ["/bin/bash", "-c", "apt-get update -qq && apt-get install -qy openssh-server"]
RUN ["/bin/mkdir", "-p", "/var/run/sshd"]

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
