FROM debian:bullseye

LABEL maintainer="hjwalt"

RUN apt-get update -y && \
    apt-get install -y apt-transport-https build-essential ca-certificates curl dnsutils gettext-base git gnupg jq lsb-release make wget zip && \
    apt-get install -y libffi-dev zlib1g-dev libncurses-dev libsqlite3-dev tk-dev libgdbm-dev libbz2-dev libssl-dev libreadline-dev libpq-dev && \
    apt-get autoremove && \
    apt-get clean && \
    curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.21.2/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    curl -sL https://get.helm.sh/helm-v3.6.3-linux-amd64.tar.gz | tar -xzO linux-amd64/helm > /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm && \
    helm repo add "stable" "https://charts.helm.sh/stable" --force-update && \
    git clone https://github.com/pyenv/pyenv.git /root/.pyenv

SHELL ["/bin/bash", "-c"]

ENV SDKMAN_DIR /root/.sdkman

RUN curl -s "https://get.sdkman.io" | bash && \
    echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config && \
    echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config && \
    echo "sdkman_insecure_ssl=false" >> $SDKMAN_DIR/etc/config 

RUN cd /root/.pyenv && \
    src/configure && \
    make -C src && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> /root/.bashrc && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /root/.bashrc && \
    echo 'eval "$(pyenv init --path)"' >> /root/.bashrc && \
    echo 'eval "$(pyenv init -)"' >> /root/.bashrc && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> /root/.bash_profile && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /root/.bash_profile && \
    echo 'eval "$(pyenv init --path)"' >> /root/.bash_profile && \
    echo 'eval "$(pyenv init -)"' >> /root/.bash_profile && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> /root/.profile && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /root/.profile && \
    echo 'eval "$(pyenv init --path)"' >> /root/.profile && \
    echo 'eval "$(pyenv init -)"' >> /root/.profile

WORKDIR /root
