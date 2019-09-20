FROM debian:10-slim

ENV HUGO_VERSION='0.58.2'
ENV HUGO_NAME="hugo_extended_${HUGO_VERSION}_Linux-64bit"
ENV HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_NAME}.tar.gz"
WORKDIR /hugo
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    wget \
    git \
    ca-certificates \
    && wget "${HUGO_URL}" \
    && tar -C /usr/bin/ -xzf "${HUGO_NAME}.tar.gz" \
    && rm "${HUGO_NAME}.tar.gz" \
    && apt-get remove -y wget \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
ADD ./hugo/* /hugo/
CMD hugo server -D --bind="0.0.0.0"
