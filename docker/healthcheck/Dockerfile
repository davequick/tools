FROM mhart/alpine-node
COPY ./healthcheck_server.js /root/healthcheck_server.js
CMD node /root/healthcheck_server.js
HEALTHCHECK --interval=1m --timeout=10s --retries=3  \
    CMD wget --quiet --tries=1 --spider http://localhost:3001 || exit 1
LABEL maintainer="dq@dq.gg"

