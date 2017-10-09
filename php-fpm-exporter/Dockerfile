FROM golang:1.8 AS builder
ENV CGO_ENABLED=0 GOOS=linux
RUN go get github.com/bakins/php-fpm-exporter
RUN cd /go/src/github.com/bakins/php-fpm-exporter && go build -o php-fpm-exporter ./cmd/php-fpm-exporter

FROM scratch
COPY --from=builder /go/src/github.com/bakins/php-fpm-exporter/php-fpm-exporter /php-fpm-exporter
ENTRYPOINT /php-fpm-exporter
CMD -h

