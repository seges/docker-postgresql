#!/bin/bash

echo "host all \"$DB_USERNAME\" 0.0.0.0/0 md5" >> /var/lib/postgresql/data/pg_hba.conf

for db in $DB_NAMES; do
	dbs="${dbs}CREATE DATABASE $db OWNER $DB_USERNAME;"
done


gosu postgres postgres --single -E <<-EOSQL
	CREATE ROLE $DB_USERNAME WITH LOGIN ENCRYPTED PASSWORD '$DB_PASSWORD';
	$dbs
EOSQL

