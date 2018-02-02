FROM golang:1.9 AS builder
ENV CGO_ENABLED=0 GOOS=linux
RUN git clone https://github.com/nats-io/prometheus-nats-exporter.git $GOPATH/src/github.com/nats-io/prometheus-nats-exporter
RUN cd $GOPATH/src/github.com/nats-io/prometheus-nats-exporter && go build

FROM scratch
MAINTAINER david amick <docker@davidamick.com>
COPY --from=builder /go/src/github.com/nats-io/prometheus-nats-exporter/prometheus-nats-exporter /prometheus-nats-exporter
ENTRYPOINT ["/prometheus-nats-exporter"]
CMD ["-h"]

