FROM ubuntu:14.04
MAINTAINER david amick <docker@davidamick.com>

ENV DEBIAN_FRONTEND noninteractive

RUN /bin/bash -c "apt-get update -qq && apt-get install -qy wget curl bzip2 make gcc git-core build-essential patch mtr htop vim man nmap sysstat bwm-ng iotop ipcalc netcat-openbsd && apt-get clean"

RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/node-latest.tar.gz && \
  tar xvzf node-latest.tar.gz && \
  rm -f node-latest.tar.gz && \
  cd node-v* && \
  ./configure && \
  CXX="g++ -Wno-unused-local-typedefs" make && \
  CXX="g++ -Wno-unused-local-typedefs" make install && \
  cd /tmp && \
  rm -rf /tmp/node-v* && \
  npm install -g npm && \
  printf '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
