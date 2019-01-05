minimum the following environment variables must be set:

KAFKA_BROKER_ID
KAFKA_ADVERTISED_HOST_NAME
KAFKA_ZOOKEEPER_CONNECT

docker run -d -e KAFKA_BROKER_ID=1 -e KAFKA_ADVERTISED_HOST_NAME=172.17.8.101 -e KAFKA_ZOOKEEPER_CONNECT=172.17.8.101 davequick/image:kafka

