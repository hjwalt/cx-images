FROM hjwalt/cx-base:latest

LABEL maintainer="hjwalt"

RUN source /root/.bashrc \
    && source "/root/.sdkman/bin/sdkman-init.sh" \
    && sdk install java 11.0.11.hs-adpt \
    && sdk install flink 1.12.2 

RUN curl https://archive.apache.org/dist/kafka/2.8.1/kafka_2.13-2.8.1.tgz --output kafka.tgz
RUN tar -zxvf kafka.tgz \
  && mv kafka_2.13-2.8.1 kafka \
  && chmod g+rwx /root \
  && mkdir /config \
  && chmod g+rwx /config 

ENV PATH /root/kafka/bin:$PATH

CMD sleep "3600"