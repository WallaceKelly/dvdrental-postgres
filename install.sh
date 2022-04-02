export PGUSER=postgres
psql <<- SHELL
    CREATE USER docker;
    CREATE DATABASE "dvdrental";
    GRANT ALL PRIVILEGES ON DATABASE "dvdrental" TO docker;
SHELL
cd /data
pg_restore -U postgres -d dvdrental dvdrental.tar