FROM alpine:3.6

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update && apk upgrade && apk add \
    bash \
    gcc musl-dev libffi-dev make \
    rsync \
    ruby ruby-dev \
    perl \
    git \
    openssh \
    zip \
    apk add nodejs-current \
    jq \
    python \
    py-pip \
    py2-pip && \
    pip install --upgrade pip awscli s3cmd && \
    mkdir /root/.aws
