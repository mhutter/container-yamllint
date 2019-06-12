FROM docker.io/library/python:3-alpine
LABEL maintainer="Manuel Hutter (https://github.com/mhutter)"

WORKDIR /yaml

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt && \
    rm -rf ~/.cache/pip

CMD ["yamllint", "--version"]
