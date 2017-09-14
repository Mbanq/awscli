FROM alpine:3.5

MAINTAINER Mbanq <devs@mbanq.com>

RUN apk --update add \
    zip \
    nodejs=6.9.5-r1 \
    python \
    py-pip \
    jq \
    && pip install awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]
