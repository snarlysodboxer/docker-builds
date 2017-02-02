FROM mongo:3.4.0
MAINTAINER david amick <docker@davidamick.com>

RUN apt-get update -q && apt-get install -qy openssl curl && apt-get autoclean -y && apt-get autoremove -y

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
