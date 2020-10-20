FROM alpine:3.12

LABEL maintainer="Mbanq <dev@mbanq.com>"

RUN apk update && apk upgrade && apk add \
    bash \
    gcc musl-dev libffi-dev make \
    rsync \
    ruby ruby-dev \
    perl \
    git \
    openssh \
    zip \
    nodejs \
    npm \
    jq \
    python3 \
    py3-pip && \
    pip install --upgrade pip awscli s3cmd && \
    mkdir /root/.aws
