FROM snarlysodboxer/protoc-grpc-gateway:0.0.1

RUN apt-get update && apt-get install -y nodejs
RUN ln -s -T /usr/bin/nodejs /usr/bin/node

ENV CGO_ENABLED=0 GOOS=linux

ENTRYPOINT /bin/sh
CMD ""

