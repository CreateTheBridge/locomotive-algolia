# Locomotive CMS 

This repository contains the Ruby on Rails application which mounts LocomotiveCMS Engine for Wagon site hosting.

## Table of Contents 
- [Features](#system-features)
- [Requirements](#system-requirements)
- [Environment](#environment-configuration)
- [Documentation](#documentation-section)


## Features 

- Multi-sites natively supported
- Uses Liquid, a simple and clean templating language
- Easy to add custom sections, content types, no SQL needed
- Beautiful and intuitive editing interface
- Can fully localize all the content and pages
- Embed a Restful API to manage every site
- Develop and preview sites locally with your favorite tools **(Wagon)**
- Support for Webpack, SASS, HAML and Coffee Script **(Wagon)**

## Requirements 

- [RVM](https://rvm.io/)
- Ruby-2.6.3
- Node.js 10.18.1
- MongoDB 3.4

## Environment 

ActionMailer Configuration 

```yaml 
development:
  mail: 
    default_from: <default sending address>
    address: <mail server address>
    port: <mail port>
    domain: <sending domain>
    user_name: <username>
    password: <password>
    authentication: <plain/login/password>
    enable_starttls_auto: true/false 
```
In development, all default values are assumed from `config/secrets.yml`. 

------

In production, you must set the following environment variables.  This is done by creating a new file at the root of the project called `.env`.

```
# Rails Settings 
RAILS_ENV=production
PORT=8080
RAILS_MAX_THREADS=5
WEB_CONCURRENCY=2
PATH=<full path variable>  # Used by the task runner to locate gemfiles and executables
SECRET_KEY_BASE=<key> # Key used by the whole system
SITE_HOST=<host>  # The host your site will use to access the back office 


# Mail Settings 
MAIL_DEFAULT_FROM=
MAIL_ADDRESS=
MAIL_PORT=
MAIL_DOMAIN=
MAIL_USER_NAME=
MAIL_PASSWORD=
MAIL_AUTHENTICATION=
MAIL_ENABLE_STARTTLS_AUTO=
```

## Documentation 

- [Documentation](https://doc.locomotivecms.com/)

## Quick start 

To run the server, first install MongoDB.

```
$ brew tap mongodb/brew
$ brew install mongodb-community@3.4
```

Second, ensure all gems are installed and bundled 

```
$ > rvm gemset create 2.6.3@locomotive -- Only run this if you haven't created the gemset yet.
$ > rvm use 2.6.3@locomotive 
$ > bundle install
```

Finally, run the rails server.

```
$ > rails s 
```

You can access the back office at `localhost:3000/locomotive`