ARG ELK_VERSION=6.4.0
FROM docker.elastic.co/kibana/kibana-oss:${ELK_VERSION}
LABEL maintainer="dq@dq.gg"
COPY ./kibana.yml  /usr/share/kibana/config/kibana.yml
EXPOSE 5601

# Add kibana plugins setup here
# i.e.: RUN kibana-plugin install <name|url>
