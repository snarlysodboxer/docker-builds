FROM snarlysodboxer/ruby-ree-1.8.7-2012.02:latest
MAINTAINER david amick <docker@davidamick.com>

ENV DEBIAN_FRONTEND noninteractive

RUN /bin/bash -c "apt-get update -qq && apt-get -y build-dep pure-ftpd && apt-get install -y openbsd-inetd && apt-get -y autoclean && apt-get -y autoremove"
RUN /bin/bash -c "mkdir /tmp/pure-ftpd/ && \
  cd /tmp/pure-ftpd/ && \
  apt-get source pure-ftpd && \
  cd pure-ftpd-* && \
  sed -i '/^optflags=/ s/$/ --without-capabilities/g' ./debian/rules && \
  dpkg-buildpackage -b -uc && \
  dpkg -i /tmp/pure-ftpd/pure-ftpd-common*.deb && \
  dpkg -i /tmp/pure-ftpd/pure-ftpd_*amd64.deb && \
  rm /tmp/pure-ftpd -rf"

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
