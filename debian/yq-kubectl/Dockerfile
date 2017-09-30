FROM python:3.6.2-stretch
MAINTAINER david amick <docker@davidamick.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -q && apt-get install -qy bash jq curl && apt-get autoclean -y && apt-get autoremove -y
RUN pip install yq

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.7.3/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin/kubectl

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
