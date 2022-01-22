FROM python:3.9-slim-buster

RUN set -ex && \
    apt update && \
    apt install --no-install-recommends -y \
        apt-transport-https \
        ca-certificates \
        curl gnupg \
        lsb-release \
        sudo \
    && \
    rm -rf /var/lib/apt/lists/*

RUN pip install poetry

COPY --from=ghcr.io/datapio/klifter:0.2.0 /workspace /workspace
WORKDIR /workspace

RUN set -ex && \
    poetry config virtualenvs.in-project true --local && \
    poetry install

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
