FROM ubuntu:latest
MAINTAINER david amick <docker@davidamick.com>

ENV TERM screen-256color
RUN DEBIAN_FRONTEND=noninteractive apt-get update -q && apt-get install -qy bash wget iptables dnsutils curl mysql-client postgresql-client mongodb-clients && apt-get autoclean -y && apt-get autoremove -y

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.5.1/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin/kubectl

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
