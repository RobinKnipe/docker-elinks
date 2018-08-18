FROM alpine

RUN apk update \
 && apk add --no-cache ca-certificates \
 && apk add elinks \
 && apk upgrade --no-cache \
 && addgroup -S elinks \
 && adduser -S elinks -G elinks -u 31345 -h /elinks/ \
 && chown -R elinks:elinks /elinks/

USER 31345

ENTRYPOINT ["sleep", "1200"]
