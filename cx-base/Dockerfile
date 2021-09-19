FROM debian:buster

LABEL maintainer="hjwalt"

RUN apt-get update -y \
    && apt-get install -y apt-transport-https build-essential ca-certificates curl gnupg lsb-release make \
    && apt-get autoremove \
    && apt-get clean