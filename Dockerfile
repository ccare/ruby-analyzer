FROM alpine:3.9

RUN mkdir /opt/analyzer

RUN \
  apk update && apk upgrade \
  apk --no-cache add build-base ruby ruby-dev ruby-bundler ruby-json ruby-irb ruby-rake ruby-bigdecimal && \
  rm -rf /var/cache/apk/*

WORKDIR /opt/analyzer

COPY . /opt/analyzer

RUN bundle install
