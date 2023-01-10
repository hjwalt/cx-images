#!/usr/bin/env bash

podman-remote build --tag docker.io/hjwalt/cx-base-test-2:latest --format docker cx-base/.
podman-remote build --tag docker.io/hjwalt/cx-python-aws:latest --format docker cx-python-aws/.