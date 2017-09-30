FROM python:3.6.2-stretch
MAINTAINER david amick <docker@davidamick.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -q && apt-get install -qy bash jq && apt-get autoclean -y && apt-get autoremove -y
RUN pip install yq

ENTRYPOINT yq
CMD []
