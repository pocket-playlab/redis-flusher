FROM alpine:latest
MAINTAINER Sebastian Sasu <sebastian.s@pocketplaylab.com>
RUN apk add --update redis \
  && rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

ENTRYPOINT ["redis-cli"]
# CMD ["-n", "0", "-h", "localhost", "flushdb"]
