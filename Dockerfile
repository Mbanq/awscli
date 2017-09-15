FROM alpine:3.6

MAINTAINER Mbanq <devs@mbanq.com>

RUN apk update && apk upgrade && apk add \
    bash \
    ruby \
    ruby-dev \
    git \
    openssh \
    zip \
    nodejs-npm=6.10.3-r1 \
    jq \
    python \
    py-pip \
    py2-pip && \
    pip install --upgrade pip awscli s3cmd && \
    mkdir /root/.aws
