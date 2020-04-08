FROM golang:alpine
RUN apk add --no-cache curl git bash openssh openssl \
 && curl -sSL https://github.com/golang/dep/releases/download/v0.5.4/dep-linux-amd64 -o /go/bin/dep \
 && chmod +x /go/bin/dep