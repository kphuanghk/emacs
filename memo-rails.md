    development:
      adapter: postgresql
      encoding: utf8
      database: app_development
      pool: 5
      username: app_name
      password:

Then create the user (AKA "role") inside PostgreSQL using psql.exe:

    $ psql -d postgres
    postgres=# create role app_name login createdb;
    postgres=# \q

