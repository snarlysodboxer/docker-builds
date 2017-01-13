FROM ubuntu:latest
MAINTAINER david amick <docker@davidamick.com>

ENV TERM screen-256color
RUN DEBIAN_FRONTEND=noninteractive apt-get update -q && apt-get install -qy autossh bash wget iptables dnsutils && apt-get autoclean -y && apt-get autoremove -y
RUN mkdir -vp /root/.ssh/
RUN chmod 750 /root/.ssh/
ADD ssh_config /etc/ssh/ssh_config
RUN chown root:root /etc/ssh/ssh_config

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.5.1/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin/kubectl

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
