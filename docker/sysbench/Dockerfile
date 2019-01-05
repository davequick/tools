FROM alpine:3.7
LABEL maintainer="dq@dq.gg" benchmark="sysbench"

RUN apk add --virtual .build-deps git build-base automake autoconf libtool mariadb-dev --update \
  && git clone https://github.com/akopytov/sysbench.git \
  && cd sysbench \
  && ./autogen.sh \
  && ./configure --disable-shared \
  && make \
  && make install \
  && apk del .build-deps \
  && apk add bash mariadb-client-libs

CMD ["sysbench"]
