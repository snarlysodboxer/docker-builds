FROM php:7.2.0
# FROM php:5.6.32

RUN apt-get update && apt-get install -y unzip wget git-core autoconf automake libtool libz-dev && apt-get autoclean -y && apt-get autoremove -y
RUN pecl install grpc
RUN pecl install protobuf
RUN git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc && \
    cd grpc && \
    git pull --recurse-submodules && \
    git submodule update --init --recursive && \
    cd src/php && \
    ./bin/run_tests.sh && \
    cd ../.. && \
    make grpc_php_plugin && \
    mkdir -p /opt && \
    mv bins/opt/grpc_php_plugin /opt/ && \
    cd .. && \
    rm grpc -rf
WORKDIR /root
RUN wget https://github.com/google/protobuf/releases/download/v3.5.0/protoc-3.5.0-linux-x86_64.zip && \
    unzip protoc-3.5.0-linux-x86_64.zip && \
    mv bin/protoc /usr/local/sbin/ && \
    rm bin/ protoc-3.5.0-linux-x86_64.zip -rf
RUN echo 'extension=grpc.so' > /usr/local/etc/php/conf.d/docker-php-ext-grpc.ini
RUN echo 'extension=protobuf.so' > /usr/local/etc/php/conf.d/docker-php-ext-protobuf.ini

