FROM docker:dind

WORKDIR /sdk

RUN apk add --update curl python3 py3-pip
# RUN rc-update add docker boot
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-343.0.0-linux-x86_64.tar.gz
RUN tar xzf google-cloud-sdk-343.0.0-linux-x86_64.tar.gz
RUN ./google-cloud-sdk/install.sh
ENV PATH="$PATH:/sdk/google-cloud-sdk/bin"
