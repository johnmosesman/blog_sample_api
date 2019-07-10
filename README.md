# README

This repo was made to illustrate basic API concepts for [my blog post]().

## To use this repo

```
$ git clone git@github.com:johnmosesman/blog_sample_api.git
$ cd blog_sample_api/
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
```

And you're up and running! You can test it out by doing:

```
$ curl http://localhost:3000/users
```

This should just return an empty array (`[]`) since you don't have any users.

## Re-creating this API from scratch

This API was created by using the Rails generators, and the `--api` flag when making the project, like so:

```
$ rails new my-api --api
$ cd my-api
$ bundle install
$ rails g scaffold User name age:integer
$ rails db:create
$ rails db:migrate
$ rails s
```

## Seed some users

You can make users by sending a `POST` request to the API (as mentioned in the post), or you can start with a couple users by using the rails console:

```
$ rails console
> User.create!(name: "Bob", age: 50)
> User.create!(name: "Susy", age: 25)
```
