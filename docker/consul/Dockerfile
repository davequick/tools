FROM consul:latest
LABEL maintainer="dq@dq.gg"
CMD ["agent","-retry-join=$(SERVICE_NAME)", "-server=true", "-bootstrap-expect=3"]
