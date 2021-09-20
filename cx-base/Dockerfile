FROM debian:buster

LABEL maintainer="hjwalt"

RUN apt-get update -y \
    && apt-get install -y apt-transport-https build-essential ca-certificates curl git gnupg jq lsb-release make \
    && apt-get autoremove \
    && apt-get clean \
    && curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.21.2/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && curl -sL https://get.helm.sh/helm-v3.6.3-linux-amd64.tar.gz | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
    && chmod +x /usr/local/bin/helm \
    && helm repo add "stable" "https://charts.helm.sh/stable" --force-update

CMD bash