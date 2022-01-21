FROM hjwalt/cx-base:latest

LABEL maintainer="hjwalt"

SHELL ["/bin/bash", "-c"]

RUN source /root/.profile \
    && pyenv install 3.9.9 \
    && pyenv local 3.9.9 \
    && pip install pipenv
