FROM registry.mhnet.dev/library/python:3-alpine
LABEL maintainer="Manuel Hutter (https://github.com/mhutter)" \
      org.opencontainers.image.source="https://github.com/mhutter/container-yamllint"

WORKDIR /yaml

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt && \
    rm -rf ~/.cache/pip

CMD ["yamllint", "--version"]
