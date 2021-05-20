User.destroy_all
Post.destroy_all
Reaction.destroy_all
Category.destroy_all
Comment.destroy_all
Tag.destroy_all

puts "Testing"
user_6 = User.create(email: "blu@me.com", password: "123456", nickname: "blueberry", emoji: "😅", background_color: "blue")
user_7 = User.create(email: "bla@me.com", password: "123456", nickname: "blackberry", emoji: "🤠", background_color: "black")
user_8 = User.create(email: "rasp@me.com", password: "123456", nickname: "raspberry", emoji: "🤪", background_color: "white")
user_9 = User.create(email: "brick@me.com", password: "123456", nickname: "brickleberry", emoji: "🐶", background_color: "green")
user_10 = User.create(email: "straw@me.com", password: "123456", nickname: "strawberry", emoji: "🥸", background_color: "red")

puts "Testing category"

first_category = Category.create(name: "Work and Study")
second_category = Category.create(name: "Finance")
third_category = Category.create(name: "Household")
fourth_category = Category.create(name: "Relationship")
fifth_category = Category.create(name:  "Family")
sixth_category = Category.create(name: "Friends")
seventh_category = Category.create(name: "Health")
eighth_category = Category.create(name: "Hobby and Leisure")
ninth_category = Category.create(name:  "Other Screw-ups")



post = Post.create(user: user_6, content: "I screw up pretty big at Work!", category: first_category)
post = Post.create(user: user_7, content: "I screw up pretty big at Finance!", category: second_category)
post = Post.create(user: user_8, content: "I screw up pretty big at Household!", category: third_category)
post = Post.create(user: user_9, content: "I screw up pretty big at Relationship!", category: fourth_category)
post = Post.create(user: user_10, content: "I screw up pretty big at Family!", category: fifth_category)
post.reactions.create(user: user_8)
puts "Finished testing"
post = Post.create(user_id: 1, content: "I screw up pretty big at home!", category_id: 5)


puts "Finished category"
