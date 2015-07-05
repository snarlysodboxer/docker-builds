FROM ubuntu:14.04
MAINTAINER david amick <docker@davidamick.com>

RUN ["/bin/bash", "-c", "apt-get update -qq && apt-get install -qy python-software-properties nodejs rsync"]
RUN ["/bin/bash", "-c", "echo", "\"deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main\"", ">>", "/etc/apt/sources.list.d/postgresql.list"]
RUN ["/bin/bash", "-c", "apt-get update -qq && apt-get install -qy postgresql-9.3 postgresql-contrib"]
RUN ["/bin/bash", "-c", "/etc/init.d/postgresql start && su -c 'psql -c \"create extension tablefunc;\"' postgres && su -c 'psql -c \"create extension ltree;\"' postgres && /etc/init.d/postgresql stop"]
RUN ["/bin/bash", "-c", "usermod -a -G www-data postgres"]
RUN ["/bin/bash", "-c", "rm /etc/ssl/certs/ssl-cert-snakeoil.pem"]
RUN ["/bin/bash", "-c", "rm /etc/ssl/private/ssl-cert-snakeoil.key"]

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]

# snarlysodboxer/postgresql-9.3:0.0.0
