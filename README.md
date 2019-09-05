# README

## Link to App

You can visit the app by clicking this link: [Access App]: PENDING.

## How the application was generated

Let's create a new application enabled with Webpack and React. You need to have node and yarn installed on your computer.

```sh
 $ rails new reluviaris-rails-with-webpacker-react --webpack=react --database=postgresql
```

```sh
 $ rails generate react:install
```

## Ruby version: 

* 2.5.3 

## System dependencies

* rails 5.2.3
* node 10.16.0
* yarn 1.12.3


## Configuration
```sh
 $ bundle install
```

```sh
 $ yarn install
```

## Database creation
```sh
 $ rails db:create
```
```sh
 $ rails db:migrate
```

## Database initialization
```sh
 $ rails dev:setup
```

## How to run the test suite

## Deployment instructions

### Deploy Heroku

```sh
 $ heroku create app-name
```

```sh
 $ heroku buildpacks:add heroku/ruby
 $ heroku buildpacks:add heroku/nodejs
```

```sh
 $ git add .
```

```sh
 $ git commit -m 'My first commit'
```

```sh
 $ git push heroku master
```

License
----

MIT (change)
