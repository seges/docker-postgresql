#!/bin/bash

echo "host all \"$DB_USERNAME\" 0.0.0.0/0 md5" >> /var/lib/postgresql/data/pg_hba.conf

for db in $DB_NAMES; do
	dbs="${dbs}CREATE DATABASE $db OWNER $DB_USERNAME;"
done


# admin user must be superuser because CREATE EXTENSION statements are used in migrations
#gosu postgres postgres --single -E <<-EOSQL
psql --username postgres <<-EOSQL
  CREATE ROLE $DB_USERNAME WITH LOGIN ENCRYPTED PASSWORD '$DB_PASSWORD';
  CREATE ROLE ${DB_USERNAME_ADMIN} WITH SUPERUSER LOGIN ENCRYPTED PASSWORD '$DB_PASSWORD_ADMIN';
  $dbs
EOSQL

