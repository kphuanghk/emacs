    development:
      adapter: postgresql
      encoding: utf8
      database: app_development
      pool: 5
      username: app_name
      password:

Then create the user (AKA "role") inside PostgreSQL using psql.exe:
    $sudo -u postgres psql #This use postgres account to run psql command
    $psql -d postgres
    postgres=# create role app_name login createdb;
    postgres=# \q

    #To list the database after rake db:create
    $\list
    $\c <db>
    $\dt #List tables
    $\dt #List tablespace


To allow local access is via password authentication:
Edit the file /etc/postgresql/9.1/main/pg_hba.conf 

    CHANGE Line:
    local   all             all                                     peer
    To:
    local   all             all                                     md5

    sudo service postgresql restart

If failed to create the app/user account that existed in postgres, you may see the error:
    FATAL:  Peer authentication failed for user "<user>	 "

