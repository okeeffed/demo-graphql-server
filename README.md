# README

This is the repo that goes along with my post ["Setting Up A Base GraphQL Server And GraphiQL With Rails 7"](https://blog.dennisokeeffe.com/blog/2022-02-20-setting-up-a-base-graphql-server-and-graphiql-with-rails-7).

## Quickstart

```s
$ bin/rails db:create db:migrate db:seed
# Start the server
$ bin/rails s
```

The GraphiQL interface will be available at `localhost:3000/graphiql`.

## How this repo was created

- https://graphql-ruby.org/getting_started

```s
# Create a new Rails app
$ rails new demo-graphql-server

# Add the required gems
$ bundler add graphql graphiql-rails

# Setup our base GraphQL files
$ bin/rails g graphql:install

# Create our models
$ bin/rails g model Post title rating
$ bin/rails g model Comment body post:references

# Make your first object type
$ bin/rails g graphql:object Post title:String rating:Int comments:[Comment]
$ bin/rails g graphql:object Comment body:String post:Post

# Note: at this stage we should update our `Posts` model for the `has_many` relationship.

# Run migrations and seeding
$ bin/rails db:create db:migrate db:seed

# Start the server on port 3000
$ bin/rails s
```

- Updates Post model for `has_many`.
- https://github.com/rmosolgo/graphiql-rails
- Show the Rails console to demo that items have been saved.
