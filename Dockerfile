FROM alpine:3.5

MAINTAINER Mbanq <devs@mbanq.com>

RUN apk --update add \
    python \
    py-pip \
    jq \
    && pip install awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]
