FROM alpine:3.5

MAINTAINER Mbanq <devs@mbanq.com>

RUN apk --update add \
    nodejs=6.2.0-r0 \
    zip \
    python \
    py-pip \
    jq \
    && pip install awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]
