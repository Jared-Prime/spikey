FROM ruby:2.4.2

MAINTAINER Jared Davis <jared@haiq.us>

ENV APPLICATION_DIRECTORY /opt/apps/spikey

ENV APPLICATION_USER spikey

RUN mkdir -p $APPLICATION_DIRECTORY && \
    adduser spikey

WORKDIR $APPLICATION_DIRECTORY

COPY Gemfile ./
COPY Gemfile.lock ./

RUN bundle install

COPY lib ./

USER $APPLICATION_USER