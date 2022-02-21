# README

## What I am doing

- https://graphql-ruby.org/getting_started

```s
$ bundler add graphql
$ bundler add graphiql-rails

# Setup our base GraphQL files
$ bin/rails g graphql:install

# Create our models
$ bin/rails g model Post title rating
$ bin/rails g model Comment body post:references

# Make your first object type
$ bin/rails g graphql:object Post title:String rating:Int comments:[Comment]
$ bin/rails g graphql:object Comment body:String post:Post

# Run migrations and seeding
$ bin/rails db:create db:migrate db:seed
```

- Updates Post model for `has_many`.
- https://github.com/rmosolgo/graphiql-rails
- Show the Rails console to demo that items have been saved.
