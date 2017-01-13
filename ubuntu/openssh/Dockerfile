FROM ubuntu:latest
MAINTAINER david amick <docker@davidamick.com>

RUN apt-get update -qq && apt-get install -qy openssh-server dnsutils iputils-ping
RUN mkdir -p /var/run/sshd
RUN useradd --shell /bin/bash --create-home --base-dir /home ubuntu
RUN mkdir /home/ubuntu/.ssh && chmod 700 /home/ubuntu/.ssh && chown ubuntu:ubuntu /home/ubuntu/.ssh
Add sshd_config /etc/ssh/sshd_config

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
