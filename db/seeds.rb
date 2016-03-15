# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all

one = Post.create({
  title: "First Post"
  updated_at: DateTime.new(2016,03,14,22)
  post_body: "This is my first post. It is full of very interesting content. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  tag: "myfirstpost"
})

two = Post.create({
  title: "Second Post"
  updated_at: DateTime.new(2016,03,15,10)
  post_body: "This is my second post. I wrote it over breakfast while contemplating the meaning of life. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  tag: "breakfast"
})

one.comments.create({
  updated_at: DateTime.new(2016,03,14,23)
  comment_body: "This post is SO great. Plz post more soon!"
})

one.comments.create({
  updated_at: DateTime.new(2016,03,15,01)
  comment_body: "Very interesting. I am interested in learning more."
})

two.comments.create({
  updated_at: DateTime.new(2016,03,15,17)
  comment_body: "Breakfast brings inspiration."
})
