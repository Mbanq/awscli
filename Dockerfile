FROM alpine:3.6

MAINTAINER Mbanq <devs@mbanq.com>

RUN apk --update add \
    zip \
    nodejs-npm=6.10.3-r1 \
    python \
    py-pip \
    jq \
    && pip install awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]
