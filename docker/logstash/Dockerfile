ARG ELK_VERSION=6.4.0
FROM docker.elastic.co/logstash/logstash-oss:${ELK_VERSION}
LABEL maintainer="dq@dq.gg"
ENV LS_JAVA_OPTS="-Xmx256m -Xms256m"
ADD ./pipeline /usr/share/logstash/pipeline
ADD ./config /usr/share/logstash/config
EXPOSE 5000 9600

# Add logstash plugins setup here
# i.e.: RUN logstash-plugin install logstash-filter-json
