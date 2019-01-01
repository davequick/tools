FROM busybox:latest
CMD sh -c "while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; echo 'ok'; echo `set`; } | nc -l -p  8080; done"
LABEL maintainer="dq@dq.gg"

