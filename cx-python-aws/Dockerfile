FROM python:3.11.1-bullseye

LABEL maintainer="hjwalt"

ENV DEBIAN_FRONTEND=noninteractive

RUN pip3 install pipenv && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install 
