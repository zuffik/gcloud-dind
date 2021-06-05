FROM python:3.7.10-alpine3.12

RUN apk add --update docker openrc curl
RUN rc-update add docker boot
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-343.0.0-linux-x86_64.tar.gz
RUN tar xvzf google-cloud-sdk-343.0.0-linux-x86_64.tar.gz
RUN ./google-cloud-sdk/install.sh
ENV PATH="$PATH:$(pwd)/google-cloud-sdk/bin"
