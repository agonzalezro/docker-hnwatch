FROM ubuntu

RUN apt-get -y install wget

ENV APP HeavyThing-1.13

RUN wget https://2ton.com.au/$APP.tar.gz
RUN tar zxvf $APP.tar.gz
WORKDIR $APP

CMD hnwatch/hnwatch
