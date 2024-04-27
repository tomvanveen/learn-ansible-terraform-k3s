ARG VARIANT="3.12-bookworm"
FROM mcr.microsoft.com/devcontainers/python:1-${VARIANT}

ENV LANG="C.UTF-8"

RUN : \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
        sshpass \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && :