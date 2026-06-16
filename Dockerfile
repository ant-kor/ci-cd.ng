FROM node:24.16.0-slim

ENV NPM_CONFIG_LOGLEVEL info

RUN apt-get update -y && \
    apt-get install -qqy --no-install-recommends rsync openssh-client git curl zip jq python3-pip && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g retire
RUN python3 -m pip install semgrep --break-system-packages
