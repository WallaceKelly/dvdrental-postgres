FROM library/postgres

RUN apt-get update
RUN apt-get -y install dos2unix

RUN mkdir /data
COPY dvdrental.tar /data/

COPY install.sh /docker-entrypoint-initdb.d/
RUN dos2unix /docker-entrypoint-initdb.d/*.sh
