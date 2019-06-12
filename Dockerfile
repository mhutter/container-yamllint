FROM docker.io/library/python:3-alpine
LABEL maintainer="Manuel Hutter (https://github.com/mhutter)"

WORKDIR /yaml

RUN pip install yamllint && \
    rm -rf ~/.cache/pip

CMD ["yamllint", "--version"]
