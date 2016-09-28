FROM alpine:latest

RUN apk update
RUN apk add redis \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["redis-cli", "-n", "0", "-h"]
# CMD ["localhost", "flushdb"]
