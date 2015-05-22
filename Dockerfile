FROM postgres:9.3.5
MAINTAINER Ladislav Gazo <gazo@seges.sk>

ADD one-db-init.sh /docker-entrypoint-initdb.d/

