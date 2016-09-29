FROM alpine:latest

RUN apk update
RUN apk add redis \
  && rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

ENTRYPOINT ["redis-cli"]
# CMD ["-n", "0", "-h", "localhost", "flushdb"]
