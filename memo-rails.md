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
    $\db #List tablespace


To allow local access is via password authentication:
Edit the file /etc/postgresql/9.1/main/pg_hba.conf 

CHANGE Line:

    local   all             all                                     peer

To:

    local   all             all                                     md5

    sudo service postgresql restart

If failed to create the app/user account that existed in postgres, you may see the error:

    FATAL:  Peer authentication failed for user "<user>	 "


In APPS/config/initializers/

    curl -O https://rails.lighthouseapp.com/projects/8994/tickets/1731/a/411967/mailer_ext.rb

The key might be due to the issue 8994
https://rails.lighthouseapp.com/projects/8994/tickets/1731-make-enable_starttls_auto-opt-in-in-actionmailer#ticket-1731-18

Checkout Latest Rails Source

    git clone https://github.com/rails/rails.git
