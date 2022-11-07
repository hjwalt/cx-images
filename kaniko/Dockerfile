FROM gcr.io/kaniko-project/executor:latest as kaniko
FROM alpine:3

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash curl gettext

COPY --from=kaniko /kaniko /kaniko

ENV HOME /root
ENV USER root
ENV PATH /kaniko:$PATH
ENV SSL_CERT_DIR /kaniko/ssl/certs
ENV DOCKER_CONFIG /kaniko/.docker/

WORKDIR /workspace

ENTRYPOINT ["/kaniko/executor"]