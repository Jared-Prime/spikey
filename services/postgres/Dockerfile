FROM postgres:10

MAINTAINER Jared Davis <jared@haiq.us>

COPY services/postgres/script/setup.sh /docker-entrypoint-initdb.d/
COPY services/postgres/seeds/*.sql /docker-entrypoint-initdb.d/