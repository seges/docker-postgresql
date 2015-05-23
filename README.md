# PostgreSQL image

Extends official PostgreSQL docker image but allows you to specify database name, user and password that will be created upon brand new container start.

# Environment parameters

| Key         | Description
| ----------- | ------------
| DB_USERNAME | Database username that will be used to access specified databases
| DB_PASSWORD | Username's password
| DB_NAMES    | space-separated list of databases to be created
