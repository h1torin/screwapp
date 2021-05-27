User.destroy_all
Post.destroy_all
Reaction.destroy_all
Category.destroy_all
Comment.destroy_all
Tag.destroy_all

puts "Testing"
user_6 = User.create(email: "blu@me.com", password: "123456", nickname: "Blue Chicken", emoji: "😅", background_color: "blue")
user_7 = User.create(email: "bla@me.com", password: "123456", nickname: "Crimson Ape", emoji: "🤠", background_color: "white")
user_8 = User.create(email: "rasp@me.com", password: "123456", nickname: "White Whale", emoji: "🤪", background_color: "black")
user_9 = User.create(email: "brick@me.com", password: "123456", nickname: "Ginger Butterfly", emoji: "🐶", background_color: "green")
user_10 = User.create(email: "straw@me.com", password: "123456", nickname: "Silver Dog", emoji: "🥸", background_color: "red")

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



post = Post.create(user: user_6, content: "I'm under the covers and i want to wrap in a ball and die. I was having another meet with my friends and I joined with my username ostrich with a dick . This was 30 minutes before our school call. When I clicked on the school link, I didn't notice that i was signed in from ostrich with a dick instead of my real name.

    So I sent a request. The teacher ( obviously) denied it. And I acted like a fucking idiot and sent the request 5 more times , wondering why I was getting denied every time. My friends texted me saying that I sent a request with the wrong ID. And now apparently, I'm the ostrich dude.
    
    So yeah, I'm not gonna forget this for a really long time. a really really long time because I did this in *drumroll....highschool. Sighs. They won't let me forget this
    
    
    
    TL;DR : Got dicked by a ostrich in google meet.", category: first_category)
post = Post.create(user: user_7, content: "I fuck up most days when alcohol is involved, but last week I dropped a full bottle of red wine on my white floor which is unpolished. Yes, that means the floor gets stained. I moved into this house recently, it's really cute looking house, and out of excitement, I moved in without noticing the problem with the flooring. As a result, whenever I drop something, the floor gets stained. In the first week itself, I dropped lemon tea followed by pickle, which left big big stains. Now last week I dropped wine bottle and yes it was all I had. All booze shops were closed here and we were getting it in black.", category: second_category)
post = Post.create(user: user_8, content: "Tifu by peeing in someone's driveway in the middle of the night, getting caught and partially wetting myself.", category: third_category)
post = Post.create(user: user_9, content: "I tried to my make a funny joke about cancer to someone that actually has cancer.", category: fourth_category)
post = Post.create(user: user_10, content: "TIFU by buying my friends a huge, dark, complex, adult novel for their baby shower instead of a kid's book.", category: fifth_category)
post.reactions.create(user: user_8)
puts "Finished testing"
post = Post.create(user_id: 1, content: " had an itch in my ear and very gently tried to relieve the itch. It worked, but I somehow fucked up doing that because now my ear is blocked and can hardly hear out of it even after trying different ways to unblock it and get back to normal.", category_id: 5)


puts "Finished category"
