
FROM alpine:3

WORKDIR /root

RUN apk add --no-cache bash ca-certificates curl gettext git gzip openssh jq bind-tools python3 py3-pip openjdk11 tar
RUN curl https://downloads.apache.org/flink/flink-1.13.2/flink-1.13.2-bin-scala_2.12.tgz --output flink.tgz
RUN curl https://archive.apache.org/dist/kafka/2.8.1/kafka_2.13-2.8.1.tgz --output kafka.tgz

RUN wget -q https://storage.googleapis.com/kubernetes-release/release/v1.21.0/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl \
  && wget -q https://get.helm.sh/helm-v3.5.4-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
  && chmod +x /usr/local/bin/helm

RUN tar -zxvf flink.tgz \
  && mv flink-1.13.2 flink \
  && tar -zxvf kafka.tgz \
  && mv kafka_2.13-2.8.1 kafka \
  && chmod g+rwx /root \
  && mkdir /config \
  && chmod g+rwx /config \
  && helm repo add "stable" "https://charts.helm.sh/stable" --force-update

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH /root/kafka/bin:/root/flink/bin:$JAVA_HOME/bin:$PATH

CMD sleep "3600"