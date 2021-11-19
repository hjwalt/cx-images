FROM debian:buster

LABEL maintainer="hjwalt"

RUN apt-get update -y \
    && apt-get install -y apt-transport-https build-essential ca-certificates curl dnsutils git gnupg jq lsb-release make wget zip \
    && apt-get autoremove \
    && apt-get clean \
    && curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.21.2/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && curl -sL https://get.helm.sh/helm-v3.6.3-linux-amd64.tar.gz | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
    && chmod +x /usr/local/bin/helm \
    && helm repo add "stable" "https://charts.helm.sh/stable" --force-update

SHELL ["/bin/bash", "-c"]

ENV SDKMAN_DIR /root/.sdkman

RUN curl -s "https://get.sdkman.io" | bash \
    && echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config \
    && echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config \
    && echo "sdkman_insecure_ssl=false" >> $SDKMAN_DIR/etc/config 

CMD bash