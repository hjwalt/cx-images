FROM hjwalt/cx-base:latest

LABEL maintainer="hjwalt"

SHELL ["/bin/bash", "-lc"]

RUN source /root/.bashrc \
    && source "/root/.sdkman/bin/sdkman-init.sh" \
    && sdk install java 11.0.11.hs-adpt 

ENV PATH="${PATH}:/usr/local/jdk/bin"