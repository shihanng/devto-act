FROM shihanng/devto:v0.0.6 as tooling

FROM alpine:3.6 as alpine
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

FROM alpine:3.6
RUN apk add --no-cache --upgrade bash
COPY --from=alpine /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=tooling /devto /usr/local/bin/devto
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
