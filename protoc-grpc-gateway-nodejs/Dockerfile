FROM snarlysodboxer/protoc-grpc-gateway:latest

RUN apk update && apk add --update nodejs

ENV CGO_ENABLED=0 GOOS=linux

ENTRYPOINT /bin/sh
CMD ""

