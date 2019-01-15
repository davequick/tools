ARG ALPINE_VERSION=${ALPINE_VERSION:-3.8}
ARG OPENSSH_VERSION=${OPENSSH_VERSION:-7.7_p1-r3}

FROM alpine:${ALPINE_VERSION}
LABEL maintainer="dq@dq.gg"

ENV OPENSSH_VERSION=${OPENSSH_VERSION} \
    ROOT_PASSWORD=root \
    KEYPAIR_LOGIN=false

ADD docker-entrypoint.sh /

RUN echo "ssh gateway" > /etc/motd

RUN apk update \
    && apk upgrade \
    && apk add openssh=${OPENSSH_VERSION} \
    && chmod +x /entrypoint.sh \
    && mkdir -p /root/.ssh \
    && rm -rf /var/cache/apk/* /tmp/*

COPY id_rsa.pub /root/.ssh/authorized_keys

EXPOSE 22
VOLUME ["/etc/ssh"]
ENTRYPOINT ["/docker-entrypoint.sh"]
