FROM debian:trixie-slim

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update \
  && apt-get install --no-install-recommends -y \
    bash \
    ca-certificates \
    curl \
    git \
    xz-utils \
  && rm -rf /var/lib/apt/lists/*

RUN curl --fail --silent --show-error --location \
      https://cli-assets.heroku.com/install.sh \
    | bash \
  && git --version \
  && heroku version
