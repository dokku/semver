FROM golang:1.22.3-alpine as builder

COPY . /go/src/github.com/dokku/semver
WORKDIR /go/src/github.com/dokku/semver
RUN go build

FROM alpine:3.19.1
RUN apk add --no-cache bash
COPY --from=builder /go/src/github.com/dokku/semver/semver /usr/local/bin/semver
COPY entrypoint /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]