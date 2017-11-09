FROM golang:1.9.2

MAINTAINER Jared Davis <jared@haiq.us>

ENV APPLICATION_DIRECTORY /opt/apps/spikey

ENV APPLICATION_USER spikey

RUN mkdir -p $APPLICATION_DIRECTORY && \
    adduser spikey

WORKDIR $APPLICATION_DIRECTORY

COPY src ./