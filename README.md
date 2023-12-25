# Ruby on Rails Blog Web-Application

Simple blog web-application developed with Ruby on Rails.

## Features

* **CRUD operations**. Create, read, update & delete. These are the fundamental operations that can be performed on data in most relational database systems.

* Basic **User authentication** using the HTTP authentication system provided by Rails. Only users with a correct username & password can add, delete & edit articles. 

* **PostgreSQL** as relational database technology.

## Software version

| Software                     | Version          |
|------------------------------|------------------|
| **Operating System**         | Ubuntu 22.04 Jammy Jellyfish |
| **Ruby**                     | 3.2.2            |
| **Node.js**                  | 20.9.0           |
| **Rails**                    | 7.1.1            |
| **Git**                      | 2.34.1           |
| **PostgreSQL**               | 14.10            |


## System dependencies

| System Dependency                     | Installation Command                                |
|----------------------------------------|------------------------------------------------------|
| **git-core**                           | `sudo apt-get install git-core`                      |
| **zlib1g-dev**                         | `sudo apt-get install zlib1g-dev`                    |
| **build-essential**                    | `sudo apt-get install build-essential`               |
| **libssl-dev**                         | `sudo apt-get install libssl-dev`                    |
| **libreadline-dev**                    | `sudo apt-get install libreadline-dev`               |
| **libyaml-dev**                        | `sudo apt-get install libyaml-dev`                   |
| **libsqlite3-dev**                     | `sudo apt-get install libsqlite3-dev`                |
| **sqlite3**                            | `sudo apt-get install sqlite3`                       |
| **libxml2-dev**                        | `sudo apt-get install libxml2-dev`                   |
| **libxslt1-dev**                       | `sudo apt-get install libxslt1-dev`                  |
| **libcurl4-openssl-dev**               | `sudo apt-get install libcurl4-openssl-dev`          |
| **software-properties-common**         | `sudo apt-get install software-properties-common`    |
| **libffi-dev**                         | `sudo apt-get install libffi-dev`                    |
| **postgresql**                         | `sudo apt install postgresql libpq-dev`             |


## Rails directory structure

| File/Folder       | Purpose                                                                           |
|-------------------|-----------------------------------------------------------------------------------|
| app/             | Contains the controllers, models, views, helpers, mailers, channels, jobs, and assets for your application. You'll focus on this folder for the remainder of this guide.        |
| bin/             | Contains the rails script that starts your app and can contain other scripts you use to set up, update, deploy, or run your application.                                      |
| config/          | Contains configuration for your application's routes, database, and more. This is covered in more detail in Configuring Rails Applications.                                     |
| config.ru        | Rack configuration for Rack-based servers used to start the application. For more information about Rack, see the Rack website.                                                 |
| db/              | Contains your current database schema, as well as the database migrations.                                                                                                     |
| Gemfile          | Gemfile.lock     | These files allow you to specify what gem dependencies are needed for your Rails application. These files are used by the Bundler gem. For more information about Bundler, see the Bundler website.             |
| lib/             | Extended modules for your application.                                                                                                                                       |
| log/             | Application log files.                                                                                                                                                      |
| public/          | Contains static files and compiled assets. When your app is running, this directory will be exposed as-is.                                                                   |
| Rakefile         | This file locates and loads tasks that can be run from the command line. The task definitions are defined throughout the components of Rails. Rather than changing Rakefile, you should add your own tasks by adding files to the lib/tasks directory of your application. |
| README.md        | This is a brief instruction manual for your application. You should edit this file to tell others what your application does, how to set it up, and so on.                      |
| storage/         | Active Storage files for Disk Service. This is covered in Active Storage Overview.                                                                                          |
| test/            | Unit tests, fixtures, and other test apparatus. These are covered in Testing Rails Applications.                                                                             |
| tmp/             | Temporary files (like cache and pid files).                                                                                                                                 |
| vendor/          | A place for all third-party code. In a typical Rails application, this includes vendored gems.                                                                               |
| .gitattributes   | This file defines metadata for specific paths in a git repository. This metadata can be used by git and other tools to enhance their behavior. See the gitattributes documentation for more information.            |
| .gitignore       | This file tells git which files (or patterns) it should ignore. See GitHub - Ignoring files for more information about ignoring files.                                           |
| .ruby-version    | This file contains the default Ruby version.                                                                                                                                 |



## Database creation

Install PostgreSQL and the necessary development files:
```
sudo apt install postgresql libpq-dev
```

## Database initialization

PostgreSQL installation doesn't set up a user for you, so you'll need to follow these steps to create a user with permission to create databases.

```
# Replace 'your_username' with your desired username

sudo -u postgres createuser your_username -s

# If you want to set a password for the user, you can do the following

sudo -u postgres psql

# Replace '#' with your desired password

postgres=# 
```

Move to your new app directory

```
cd path/to/your/rails/app
```

Create **PostgreSQL** database

```
rake db:create

rake db:migrate

# (OPTIONAL) Seed database with initial data (OPTIONAL)

rake db:seed
```

Start the rails server

```
rails server
```
