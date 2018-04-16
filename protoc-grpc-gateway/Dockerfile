FROM golang:1.10.1-stretch

RUN apt-get update && \
    apt-get install -y --no-install-recommends wamerican unzip && \
    mkdir -pv /tmp/bin && \
    cd /tmp/bin && \
    wget https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && \
    unzip protoc-3.5.1-linux-x86_64.zip && \
    cp -v ./bin/protoc /usr/bin/ && \
    cd / && \
    rm -rfv /tmp/bin && \
    apt-get clean && \
    GOPATH=/go && \
    mkdir -pv $GOPATH && \
    GOPATH=$GOPATH go get -u github.com/golang/protobuf/protoc-gen-go && \
    cp -v /go/bin/protoc-gen-go /usr/bin/ && \
    rm -rfv $GOPATH



RUN apt-get update && apt-get install -y git-core
RUN go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway
RUN go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger
RUN go get -u github.com/golang/protobuf/protoc-gen-go
RUN go get -u github.com/googleapis/googleapis || true
RUN go get -u golang.org/x/net/context
RUN go get -u google.golang.org/grpc
RUN go get -u google.golang.org/genproto/googleapis/api/annotations

ENTRYPOINT /bin/sh
CMD ""

