FROM ubuntu:latest
MAINTAINER david amick <docker@davidamick.com>

ENV TERM screen-256color

# Install MongoDB key
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
RUN echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list

RUN DEBIAN_FRONTEND=noninteractive apt-get update -q && apt-get install -qy bash wget iptables dnsutils curl mysql-client postgresql-client mongodb-org-shell mongodb-org-tools && apt-get autoclean -y && apt-get autoremove -y

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.5.2/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin/kubectl

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
