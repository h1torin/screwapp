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
post = Post.create(user: user_10, content: "I screwed up by buying my friends a huge, dark, complex, adult novel for their baby shower instead of a kid's book.", category: fifth_category)
post.reactions.create(user: user_8)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_8, content: "Oh no! I feel so sorry for you")
puts "Finished testing"
post = Post.create(user_id: 1, content: "I had an itch in my ear and very gently tried to relieve the itch. It worked, but I somehow fucked up doing that because now my ear is blocked and can hardly hear out of it even after trying different ways to unblock it and get back to normal.", category_id: 5)
post = Post.create(user: user_10, content: "I completely forgot about this story, but my cousin reminded me of it this afternoon. I was maybe 14-15 years old when this happened so quite a while ago. Please be kind, I was also a dumb kid once.

    In any case, we were at some street festival and my cousins and their parents were visiting from out of town so we were out all evening exploring the festival. I somehow ended up holding a bunch of everyone’s paper cones that the cotton candy came on, so I found a bin to put them into and headed back to find my family. There was a massive crowd at this point because there was a guy bungee jumping off a crane, but in the crowd, I spotted my cousin’s jacket. I had this habit of grabbing his manboobs because it annoyed him so much and to my brother, other cousin (his brother) and myself, of course, his outbursts were absolutely hilarious, so I walked up behind him and squeezed them - and I squeezed them really hard.
    
    What followed was this hoarse gurgly scream followed by multiple blows to my head and neck. I had absolutely no idea what had happened at this point, so I just kept saying sorry to him whilst blocking my face, and when I stepped back a bit I realized that this was actually not my cousin but an older woman in her 80’s who had the exact same jacket on.
    
    I screamed I was sorry and fucking BOLTED. There was police there already just sort of patrolling so they walk up to the commotion. I had found my family and frantically told them that we had to leave, to which my dad loudly and annoyedly says “Come on man! why don’t you just take a shit in a public toilet for once in your life?” (Yes, I was one of those kids) because he thought I needed to do that, but no, the police came to me, they had a chat with my parents, I explained, apologized to the woman profusely, who was still understandably and rightfully very very upset. The cops sort of understood the situation especially when they saw my cousin’s identical jacket but still gave me the whole “this is why you don’t mess around” spiel and my cousins laughed at me for ages.", category: ninth_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: user_8)
post.reactions.create(user: user_6)
post.reactions.create(user: user_7)
post.reactions.create(user: user_9)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_6, content: "Oh no! I feel so sorry for you")
post = Post.create(user: user_10, content: "Formatting may be weird, on mobile. This happened literally 15 minutes ago. We're on holiday at the moment (in our own country) and have been doing loads of walking. Today the rain finally caught up with us after several glorious days of sunshine, the pathways were a bit slippy.

As we were walking down a slope, my boyfriend wobbled and almost fell down, which I laughed at. I quickly got my karma and a second later, I also wobbled but the world said screw you, I went on my ass right in front of a bunch of people behind us.

I didn't hurt myself but I was laughing so hard I needed to take a moment to compose myself and accept that I fully deserved what I got. #screw", category: fourth_category)
post.reactions.create(user: user_8)
post.reactions.create(user: user_6)
post.reactions.create(user: user_7)
post.reactions.create(user: user_9)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_6, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "I committed the sin of falling in love with two people. Not at the same time. One was my first love who I was with from being 14, together for 3 years then he broke up with me and broke my heart. The other was during that time of heartbreak I fell for a friend but didn't realise it because I was committed to being single at the time. But then my childhood sweetheart came back into my life and we got back together. However I've always had this lingering love and attraction to the friend.

    Anyway long story short. Many years gone by and a few issues and doubts in my relationship with my first love kept emerging. I tried to keep the friend as a friend telling myself it was ok to chat on messenger as long as we kept it neutral even though I kept having dreams about him and secretly agonizing over whether I'd made the right decisions.
    
    After many years of this, It all got too much as the mixed feelings and the turmoil never ended. I made the mistake of meeting up with the second love and things escalated. I almost cheated. So I decided to break up with my childhood sweetheart and go out with the other love. It was really good at first but then it didn't work out for me because I felt too guilty and love sick over leaving the first love. And I sacrificed everything to take the chance on it. Now I've ruined it with both and have to live with the consequences of my actions. I feel totally heart broken. I didn't want to live without either of them in my life now I have neither. This has all been over the last 17 years if my life.
    
    #lovemylife #screw #screwedup", category: fourth_category)
post.reactions.create(user: user_8)
post.reactions.create(user: user_6)
post.reactions.create(user: user_7)
post.reactions.create(user: user_9)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_6, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "This happened last night and I'm still feeling the effects and it's very painful.

    I had an unexpected free night last night - no kid, no boyfriend, no friends available. Everyone was busy so I decided to get myself a little treat for dinner and just relax and watch tv.
    
    Before I had my dinner, I had a bag of Flaming Hot Cheeto Puffs beforehand. I eat tons of spicy food and never have an issue. I ate these probably about 6:00PM and had plenty of beverage throughout the night.
    
    I went to sleep around 11, and by 1AM, I had the most intense case of heartburn I have ever had. I was literally choking and gasping for air, searching frantically for my inhaler so I could try to breathe, but then the choking started to make me vomit. The choking and the vomiting made me start to piss myself. I was sleeping naked so I was pissing down my naked self. It was really frightening being woken up like that.
    
    Not only was I in pain from the actual heartburn but now I was puking up the Flaming Hots and it burns and is making me cry. Once I could somewhat catch by breath, I started chewing antacids I found in my cabinet that apparently expired in 2018 and was able to mostly get composed. I cleaned myself up and went to the kitchen and made a glass of chocolate almond milk and started to feel way better but still burning inside. I was able to go back to sleep after a while. #almostdied #screw", category: seventh_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: user_8)
post.reactions.create(user: user_6)
post.reactions.create(user: user_7)
post.reactions.create(user: user_9)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_6, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "So, I'm on day 2 of a migraine that has kept me bed ridden the whole time, I literally had to crawl to the bathroom. I thought it would be a genius idea to take a few puffs from my vape to get rid of this migraine. As most people know, marijuana can make you dizzy. I'm on 2 different prescription medications that intensify the effects of marijuana.

    I passed out on my living room floor.
    
    Luckily, I felt it coming and I managed to not hurt myself, but I still fucked up pretty bad. #screw #headache #nomore #weed #almostdied", category: seventh_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: user_8)
post.reactions.create(user: user_6)
post.reactions.create(user: user_7)
post.reactions.create(user: user_9)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_6, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "I went for a job interview and halfway through I spontaneously threw up all down myself and proceeded to clear it up while trying not to laugh like a hyena. #jobless #screw", category: first_category, created_at: DateTime.now - (rand * 8))
    post.reactions.create(user: user_8)
    post.reactions.create(user: user_6)
    post.reactions.create(user: user_7)
    post.reactions.create(user: user_9)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_6, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "My boss's family heard me say 'Let's kill Jesus!' on our call, have a new 1-on-1 meeting on Monday. #screw #letskilljesus #jobless #nomore", category: first_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: user_8)
post.reactions.create(user: user_6)
post.reactions.create(user: user_7)
post.reactions.create(user: user_9)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_6, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "Forgot my ID. Tried to get on the wrong plane. Sat in the wrong seat because I didn't know my alphabet. Had to pay for food by making the poor cashier manually input my credit card number. I should just avoid flying. #screw #flights #nomore", category: eighth_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: user_8)
post.reactions.create(user: user_6)
post.reactions.create(user: user_7)
post.reactions.create(user: user_9)
post.comments.create(user: user_8, content: "This too shall pass")
post.comments.create(user: user_6, content: "Oh no! I feel so sorry for you")
puts "Finished category"
