fresh project

#### Postgres setup

(Good reference on postgres setup and quick start)
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-14-04

1. Connect to default postgres user

`$ sudo -i -u postgres`

`postgres@hp:~$`

2. Connect to psql

`postgres@hp:~$ psql`
OR
`postgres@hp:~$ psql -d photo_api_development`      # check database.yml for DB names


... do DB stuff
`             $ \q`


**Creatng a new user**

1. Create postgres user
`postgres@hp:~$ createuser --interactive`

2. Create new DB
   
   `$ createdb test1`

3. In aother terminal, create UNIX user that matches DB, user
   `$ adduser test1`

4. Switch UNIX user
   `sudo -i -u test1`

5. Start 
    `psql`

*do this for current UNIX user, e.g. lenny*

**Applying DB changes and starting Rails server**


`bin/rails db:migrate RAILS_ENV=development`        # or whichever db is used in `database.yml`
`rails server`

**Any changes i `database.yml` **
https://coderwall.com/p/dovmsg/how-to-make-your-rails-app-start-talking-to-a-postgres-database

`rake db:setup`

This will create development and test databases, set their owners to the user specified, and create "schema_migrations" tables in each. This table is used to record your migrations to schemas and data.
Running Rails`


#### Scaffold

`rails generate scaffold Article title:string content:text slug:string`

**Seed the DB**

`seeds.rb`
`$ rails db:seed`

#### Test DB contents after seed

`photo_api_development=# SELECT * FROM photos;`


#### Manual operation to insert

`created_at`,`updated_at` are mandatory though

`INSERT INTO photos (title, description, photo_url, created_at, updated_at) VALUES ('cute alpacas', 'soo cuute!', 'https://unsplash.com/photos/wBRvxW_Ezms', '2018_01_01', '2018_01_01');`


#####################################################

`bundle install`        # npm install

`gem install pg`
`gem install rails`

config db:
`config/database.yml`

scaffold a model:
```
rails g scaffold Post title:string body:text
rake db:migrate
```