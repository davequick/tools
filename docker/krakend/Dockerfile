FROM devopsfaith/krakend:latest
LABEL maintainer="dq@dq.gg"

ENV KRAKEND_CONFIG krakend.json

ADD reflex /usr/bin/reflex
ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /etc/krakend

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]