FROM ubuntu:14.04
MAINTAINER david amick <docker@davidamick.com>

ENV DEBIAN_FRONTEND noninteractive

RUN ["/bin/bash", "-c", "apt-get update -qq && apt-get install -qy php5-fpm php-apc php5-imagick php5-mcrypt"]

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
