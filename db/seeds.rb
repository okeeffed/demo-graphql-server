# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

post = Post.create!(
  title: 'My first post',
  rating: 4
)

post_two = Post.create!(
  title: 'A second, less impressive post',
  rating: 2
)

Comment.create!(
  [
    {
      body: 'Loved it',
      post: post
    },
    {
      body: 'Gr8 m8',
      post: post
    },
    {
      body: 'Worst one yet',
      post: post_two
    },
    {
      body: 'I want my money back',
      post: post_two
    },
    {
      body: 'You could do better',
      post: post_two
    }
  ]
)
