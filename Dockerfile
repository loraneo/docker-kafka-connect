FROM loraneo/docker-java:10.0.2a

WORKDIR /opt

ENV KAFKA_HOME /opt/kafka

RUN curl -O http://packages.confluent.io/archive/4.1/confluent-4.1.0-2.11.tar.gz && \
      tar -xvpf confluent-4.1.0-2.11.tar.gz -C /opt && \
      ln -s /opt/confluent* $KAFKA_HOME
      

EXPOSE 8083
CMD $KAFKA_HOME/bin/connect-distributed $KAFKA_HOME/config/connect-distributed.properties

