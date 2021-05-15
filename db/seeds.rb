User.destroy_all
Post.destroy_all
Reaction.destroy_all
Category.destroy_all
Comment.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Testing category"
user = User.create(email: "me@me.com", password: "123456", nickname: "blueberry", emoji: "😊", background_color: "blue")
user_2 = User.create(email: "you@me.com", password: "123456", nickname: "blackberry", emoji: "😬", background_color: "black")

first_category = Category.create(name: "Work and Study")
second_category = Category.create(name: "Finance")
third_category = Category.create(name: "Household")
fourth_category = Category.create(name: "Relationship")
fifth_category = Category.create(name:  "Family")
sixth_category = Category.create(name: "Friends")
seventh_category = Category.create(name: "Health")
eighth_category = Category.create(name: "Hobby and Leisure")
ninth_category = Category.create(name:  "Other Screw-ups")



post = Post.create(user: user, content: "I screw up pretty big at home!", category: third_category)
post.reactions.create(user: user_2)
puts "Finished category"
