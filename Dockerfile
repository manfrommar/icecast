FROM alpine:latest
LABEL maintainer "virtualworld.space@gmail.com"

RUN addgroup -S icecast && \
    adduser -S icecast
    
RUN apk add --update \
        icecast \
        mailcap && \
    rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8000
VOLUME [ "/etc/icecast" ]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["icecast", "-c", "/etc/icecast/icecast.xml"]
