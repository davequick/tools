ARG ALPINE_VERSION=${ALPINE_VERSION:-3.8}
FROM alpine:${ALPINE_VERSION}
LABEL maintainer="dq@dq.gg"

ENV ROOT_PASSWORD=root \
    KEYPAIR_LOGIN=true

ADD ./docker-entrypoint.sh /

RUN echo "ssh gateway" > /etc/motd

RUN apk update \
    && apk upgrade \
    && apk add openssh \
    && chmod +x /docker-entrypoint.sh \
    && mkdir -p /root/.ssh \
    && rm -rf /var/cache/apk/* /tmp/*

COPY id_rsa.pub /root/.ssh/authorized_keys

EXPOSE 22
VOLUME ["/etc/ssh"]
ENTRYPOINT ["/docker-entrypoint.sh"]
