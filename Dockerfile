# https://stackoverflow.com/a/43574692/10591722

FROM docker:latest

RUN apk add --no-cache \
 bash \
 build-base \
 curl \
 git \
 libffi-dev \
 openssh \
 openssl-dev \
 python \
 py-pip \
 python-dev

RUN pip install docker-compose fabric
RUN curl https://sdk.cloud.google.com | bash -s -- --disable-prompts
