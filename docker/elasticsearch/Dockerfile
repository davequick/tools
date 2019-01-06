ARG ELK_VERSION=6.4.0
FROM docker.elastic.co/elasticsearch/elasticsearch-oss:${ELK_VERSION}
LABEL maintainer="dq@dq.gg"
ENV ES_JAVA_OPTS="-Xmx256m -Xms256m"
COPY ./elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
EXPOSE 9200 9300

# Add elasticsearch plugins setup here
# i.e.: RUN elasticsearch-plugin install analysis-icu
