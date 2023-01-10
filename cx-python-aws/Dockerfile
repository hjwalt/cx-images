FROM hjwalt/cx-base:latest

LABEL maintainer="hjwalt"

RUN source /root/.profile && \
    pyenv install 3.11.1 && \
    pyenv local 3.11.1 && \
    pip install pipenv && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install 