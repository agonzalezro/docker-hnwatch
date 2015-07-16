FROM gliderlabs/alpine:3.1

RUN apk --update add tar wget

ENV VERSION 1.13
ENV APP HeavyThing-$VERSION

RUN wget --no-check-certificate https://2ton.com.au/$APP.tar.gz
RUN tar zxvf $APP.tar.gz
WORKDIR $APP

CMD hnwatch/hnwatch
