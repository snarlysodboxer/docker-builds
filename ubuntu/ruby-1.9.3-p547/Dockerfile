FROM ubuntu:12.04
MAINTAINER david amick <docker@davidamick.com>

ENV DEBIAN_FRONTEND noninteractive

RUN /bin/bash -c "apt-get update -qq && apt-get install -qy wget curl bzip2 make gcc libxml2 libxml2-dev libxslt1-dev nodejs postgresql-contrib libpq-dev git-core imagemagick libmagickcore-dev libmagickwand-dev build-essential patch zlib1g-dev libssl-dev libreadline-gplv2-dev && apt-get clean"

RUN wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz
RUN tar -xzvf ruby-install-0.5.0.tar.gz
RUN cd ruby-install-0.5.0/ && make install && ruby-install --system ruby 1.9.3-p547
RUN gem install bundler --no-ri --no-rdoc

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
