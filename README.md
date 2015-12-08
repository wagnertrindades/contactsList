Welcome to Contact List RD!
===================


This is the project done in Ruby on Rails with the goal to I be a RDoer.


It's hosted in url below:

http://contactsrd.herokuapp.com/

----------


How to install project in localhost:
-------------

First you need have installed in your system:

> 

> - Ruby 2.2.3
> - Ruby on Rails 4
> - Postgres 9.5
> - Git

### Steps:
#### Make git clone

```
$ git clone https://github.com/wtrindades/contactsList.git
```

#### Install gems in project

```
$ cd contactsList/
$ bundle install
```

#### Configure with your database

Change username and password in file `config/database.yml`:

```ruby
....

# Configure Using Gemfile
# gem 'pg'
#
default: &default
  adapter: postgresql
  encoding: utf-8
  # For details on connection pooling, see rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: 5
  username: yourusername
  password: yourpassword

...
```

#### Create and migrate database

```
$ rake db:create
$ rake db:migrate
```

#### Start server

```
$ rails s
```
And access in your browser http://localhost:3000