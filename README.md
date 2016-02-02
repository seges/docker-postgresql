# PostgreSQL image

Extends official PostgreSQL docker image but allows you to specify database name, user and password that will be created upon brand new container start.

# Environment parameters

| Key         | Description
| ----------------- | ------------
| DB_USERNAME       | Database username that will be used to access specified databases
| DB_PASSWORD       | Username's password
| DB_NAMES          | space-separated list of databases to be created
| DB_USERNAME_ADMIN | Database admin username that will be used to access specified databases with higher privileges (e.g. possible to install PG extensions)
| DB_PASSWORD_ADMIN | Admin username's password

# Run

```
docker run --rm -e DB_NAMES=mydb -e DB_USERNAME=myuser -e DB_PASSWORD=mypass -e DB_USERNAME_ADMIN=myadmin -e DB_PASSWORD_ADMIN=admpass -ti seges/postgresql:9.4.5
```
