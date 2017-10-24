FROM golang:1.8 AS builder
ENV CGO_ENABLED=0 GOOS=linux
RUN sh -c "curl https://glide.sh/get | sh"
RUN git clone https://github.com/percona/mongodb_exporter.git $GOPATH/src/github.com/percona/mongodb_exporter
RUN cd $GOPATH/src/github.com/percona/mongodb_exporter && make build

FROM scratch
MAINTAINER david amick <docker@davidamick.com>
COPY --from=builder /go/src/github.com/percona/mongodb_exporter/mongodb_exporter /mongodb_exporter
ENTRYPOINT ["/mongodb_exporter"]
CMD ["-h"]

