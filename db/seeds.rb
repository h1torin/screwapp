User.destroy_all
Post.destroy_all
Reaction.destroy_all
Category.destroy_all
Comment.destroy_all
Tag.destroy_all

puts "Testing"
family_guy = User.create(email: "blu@me.com", password: "123456", nickname: "Family Guy", emoji: "😅", background_color: "blue")
cvo_cofounder = User.create(email: "bla@me.com", password: "123456", nickname: "CVO Co-Founder", emoji: "🤠", background_color: "white")
cool_girl = User.create(email: "rasp@me.com", password: "123456", nickname: "Cool Girl", emoji: "🤪", background_color: "black")
golden_boy = User.create(email: "brick@me.com", password: "123456", nickname: "Ginger Butterfly", emoji: "🐶", background_color: "green")
user_10 = User.create(email: "straw@me.com", password: "123456", nickname: "Silver Dog", emoji: "🥸", background_color: "red")

puts "Testing category"

work_and_study_category = Category.create(name: "Work and Study")
finance_category = Category.create(name: "Finance")
household_category = Category.create(name: "household_category")
relationship_category = Category.create(name: "Relationship")
family_category = Category.create(name:  "Family")
friends_category = Category.create(name: "Friends")
health_category = Category.create(name: "Health")
leisure_category = Category.create(name: "Hobby and Leisure")
other_category = Category.create(name:  "Other Screw-ups")



post = Post.create(user: family_guy, content: "I'm under the covers and i want to wrap in a ball and die. I was having another meet with my friends and I joined with my username ostrich with a dick . This was 30 minutes before our school call. When I clicked on the school link, I didn't notice that i was signed in from ostrich with a dick instead of my real name.

    So I sent a request. The teacher ( obviously) denied it. And I acted like a fucking idiot and sent the request 5 more times , wondering why I was getting denied every time. My friends texted me saying that I sent a request with the wrong ID. And now apparently, I'm the ostrich dude.

    So yeah, I'm not gonna forget this for a really long time. a really really long time because I did this in *drumroll....highschool. Sighs. They won't let me forget this



    TL;DR : Got dicked by a ostrich in google meet. #screw #screwedup #lovemylife", category: work_and_study_category)
post = Post.create(user: cvo_cofounder, content: "I fuck up most days when alcohol is involved, but last week I dropped a full bottle of red wine on my white floor which is unpolished. Yes, that means the floor gets stained. I moved into this house recently, it's really cute looking house, and out of excitement, I moved in without noticing the problem with the flooring. As a result, whenever I drop something, the floor gets stained. In the first week itself, I dropped lemon tea followed by pickle, which left big big stains. Now last week I dropped wine bottle and yes it was all I had. All booze shops were closed here and we were getting it in black. #screw #invinoveritas #einstein", category: finance_category)
post.reactions.create(user: cool_girl)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: cool_girl, content: "Oh no! I feel so sorry for you")
puts "Finished testing"

post = Post.create(user: golden_boy, content: "Screwed up by peeing in someone's driveway in the middle of the night, getting caught and partially wetting myself. #lovemylife #screw #einstein #nomore", category: household_category)
post.reactions.create(user: cool_girl)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: cool_girl, content: "Oh no! I feel so sorry for you")
puts "Finished testing"

post = Post.create(user: golden_boy, content: "I tried to my make a funny joke about cancer to someone that actually has cancer. #einstein #reputationissues #staingalive", category: relationship_category)
post.reactions.create(user: cool_girl)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: cool_girl, content: "Oh no! I feel so sorry for you")
puts "Finished testing"

post = Post.create(user: user_10, content: "I screwed up by buying my friends a huge, dark, complex, adult novel for their baby shower instead of a kid's book. #screw #einstein #badchoices #reputation", category: family_category)
post.reactions.create(user: cool_girl)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: cool_girl, content: "Oh no! I feel so sorry for you")
puts "Finished testing"
post = Post.create(user_id: 1, content: "I had an itch in my ear and very gently tried to relieve the itch. It worked, but I somehow fucked up doing that because now my ear is blocked and can hardly hear out of it even after trying different ways to unblock it and get back to normal.", category_id: 5)
post = Post.create(user: user_10, content: "I completely forgot about this story, but my cousin reminded me of it this afternoon. I was maybe 14-15 years old when this happened so quite a while ago. Please be kind, I was also a dumb kid once.

    In any case, we were at some street festival and my cousins and their parents were visiting from out of town so we were out all evening exploring the festival. I somehow ended up holding a bunch of everyone’s paper cones that the cotton candy came on, so I found a bin to put them into and headed back to find my family. There was a massive crowd at this point because there was a guy bungee jumping off a crane, but in the crowd, I spotted my cousin’s jacket. I had this habit of grabbing his manboobs because it annoyed him so much and to my brother, other cousin (his brother) and myself, of course, his outbursts were absolutely hilarious, so I walked up behind him and squeezed them - and I squeezed them really hard.
    
    What followed was this hoarse gurgly scream followed by multiple blows to my head and neck. I had absolutely no idea what had happened at this point, so I just kept saying sorry to him whilst blocking my face, and when I stepped back a bit I realized that this was actually not my cousin but an older woman in her 80’s who had the exact same jacket on.
    
    I screamed I was sorry and fucking BOLTED. There was police there already just sort of patrolling so they walk up to the commotion. I had found my family and frantically told them that we had to leave, to which my dad loudly and annoyedly says “Come on man! why don’t you just take a shit in a public toilet for once in your life?” (Yes, I was one of those kids) because he thought I needed to do that, but no, the police came to me, they had a chat with my parents, I explained, apologized to the woman profusely, who was still understandably and rightfully very very upset. The cops sort of understood the situation especially when they saw my cousin’s identical jacket but still gave me the whole “this is why you don’t mess around” spiel and my cousins laughed at me for ages.", category: other_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
post = Post.create(user: user_10, content: "Formatting may be weird, on mobile. This happened literally 15 minutes ago. We're on holiday at the moment (in our own country) and have been doing loads of walking. Today the rain finally caught up with us after several glorious days of sunshine, the pathways were a bit slippy.

As we were walking down a slope, my boyfriend wobbled and almost fell down, which I laughed at. I quickly got my karma and a second later, I also wobbled but the world said screw you, I went on my ass right in front of a bunch of people behind us.

I didn't hurt myself but I was laughing so hard I needed to take a moment to compose myself and accept that I fully deserved what I got. #screw", category: relationship_category)
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "I committed the sin of falling in love with two people. Not at the same time. One was my first love who I was with from being 14, together for 3 years then he broke up with me and broke my heart. The other was during that time of heartbreak I fell for a friend but didn't realise it because I was committed to being single at the time. But then my childhood sweetheart came back into my life and we got back together. However I've always had this lingering love and attraction to the friend.

    Anyway long story short. Many years gone by and a few issues and doubts in my relationship with my first love kept emerging. I tried to keep the friend as a friend telling myself it was ok to chat on messenger as long as we kept it neutral even though I kept having dreams about him and secretly agonizing over whether I'd made the right decisions.
    
    After many years of this, It all got too much as the mixed feelings and the turmoil never ended. I made the mistake of meeting up with the second love and things escalated. I almost cheated. So I decided to break up with my childhood sweetheart and go out with the other love. It was really good at first but then it didn't work out for me because I felt too guilty and love sick over leaving the first love. And I sacrificed everything to take the chance on it. Now I've ruined it with both and have to live with the consequences of my actions. I feel totally heart broken. I didn't want to live without either of them in my life now I have neither. This has all been over the last 17 years if my life.
    
    #lovemylife #screw #screwedup", category: relationship_category)
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "This happened last night and I'm still feeling the effects and it's very painful.

    I had an unexpected free night last night - no kid, no boyfriend, no friends available. Everyone was busy so I decided to get myself a little treat for dinner and just relax and watch tv.
    
    Before I had my dinner, I had a bag of Flaming Hot Cheeto Puffs beforehand. I eat tons of spicy food and never have an issue. I ate these probably about 6:00PM and had plenty of beverage throughout the night.
    
    I went to sleep around 11, and by 1AM, I had the most intense case of heartburn I have ever had. I was literally choking and gasping for air, searching frantically for my inhaler so I could try to breathe, but then the choking started to make me vomit. The choking and the vomiting made me start to piss myself. I was sleeping naked so I was pissing down my naked self. It was really frightening being woken up like that.
    
    Not only was I in pain from the actual heartburn but now I was puking up the Flaming Hots and it burns and is making me cry. Once I could somewhat catch by breath, I started chewing antacids I found in my cabinet that apparently expired in 2018 and was able to mostly get composed. I cleaned myself up and went to the kitchen and made a glass of chocolate almond milk and started to feel way better but still burning inside. I was able to go back to sleep after a while. #almostdied #screw", category: health_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "So, I'm on day 2 of a migraine that has kept me bed ridden the whole time, I literally had to crawl to the bathroom. I thought it would be a genius idea to take a few puffs from my vape to get rid of this migraine. As most people know, marijuana can make you dizzy. I'm on 2 different prescription medications that intensify the effects of marijuana.

    I passed out on my living room floor.
    
    Luckily, I felt it coming and I managed to not hurt myself, but I still fucked up pretty bad. #screw #headache #nomore #weed #almostdied", category: health_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "I went for a job interview and halfway through I spontaneously threw up all down myself and proceeded to clear it up while trying not to laugh like a hyena. #jobless #screw", category: work_and_study_category, created_at: DateTime.now - (rand * 8))
    post.reactions.create(user: cool_girl)
    post.reactions.create(user: family_guy)
    post.reactions.create(user: cvo_cofounder)
    post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "My boss's family heard me say 'Let's kill Jesus!' on our call, have a new 1-on-1 meeting on Monday. #screw #letskilljesus #jobless #nomore", category: work_and_study_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: user_10, content: "Forgot my ID. Tried to get on the wrong plane. Sat in the wrong seat because I didn't know my alphabet. Had to pay for food by making the poor cashier manually input my credit card number. I should just avoid flying. #screw #flights #nomore", category: leisure_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: family_guy, content: "aa", category: leisure_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: family_guy, content: "I stuck an electric kettle on an open flame, ended up with a stinky kitchen and a dead kettle, and had to spend $50 for a replacement. (This actually happened two days ago.)

We are on vacation in a rented house. Some relatives dropped in to visit us.

My wife wanted to offer them tea. So she handed me a kettle and asked me to boil some water.

I filled it in the kitchen sink. Then I put the kettle on one of the burners on the range and turned the flame on under it.

A minute or two later, an acrid burning smell started to fill the kitchen. My wife realized what was happening, darted to the range, and turned off the burner. But she was too late to save ...

... the electric kettle. That’s right — it was the kind that has an internal heating mechanism and sits on a plugged-in base.

The outside of the kettle was scorched, and the electronics inside it were definitely fried.

As a result, I’ve just returned from Bed Bath and Beyond, $50 poorer but hopefully a little wiser.

(I don’t drink hot beverages, so I didn’t know there was such a thing as an electric kettle for boiling water. But I sure know now.)

TL;DR: I stuck an electric kettle on an open flame, ended up with a stinky kitchen and a dead kettle, and had to spend $50 for a replacement. #cookingskills #burn #lifelessons #screw #firsttimes", category: leisure_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: family_guy, content: "thought I would use a pad to soak up the water I spilled on my pants. It fell out of my pants in the middle of a crowded cafeteria. This actually happened today. I (31 male) and my coworkers have been going into work more and more lately as vaccines get rolled out. Today I was sitting in my office working when I spilled some water on my pants right in the area that would make people think I pissed my pants. I didn’t notice when it happened. I decided to walk around campus to get a snack from the cafeteria and when I was walking down the stairs, a coworker laughed when we crossed paths. It was then I noticed that my pants had the water spot.

No big deal, I sometimes have spare pants in my car so I went there to change pants. I get to the car but no extra pants. I’m looking for napkins with no luck when I see that there are a couple of my wife’s feminine pads. Lightbulbs go off as I think “I know how these work. These will soak up this water from my pants no problem” so i open one ip and stick it on the water spot. Of course nothing happens so I think “hmmm the problem here is placement!” So I move the pad to under my pants between pants and underwear. It was perfect. Double front attack. Soak up the water from the pants and the underwear at the same time. So I place it and start walking to the cafeteria. The thought that this wouldn’t work never crossed my mind.

I’m waiting in line, socially distanced. At this point, unbeknownst to me, the pad has slid down my pants to the bottom near my shoe. When I move up to the next spot in line, I get a tap on my shoulder from the lady behind me. She says “I think you dropped something” and pointed to the ground. There on the ground, right next to my shoe, was a completely dry feminine pad.

I said “oh thanks!” Picked it up, threw it away and walked back to my office. #screw #firsttimes #lifelessons #reputation", category: leisure_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: golden_boy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: family_guy, content: "I screwed up by calling my ex when I was less than coherent, and now I regret it #lomylife #screw #einstein", category: relationship_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: cool_girl, content: "My boyfriend got a dream job as a local radio host and I was the only one to miss his first broadcast and it was completely my fault. #bestpartner #screw #loveis ", category: relationship_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: family_guy, content: "After brushing my teeth, I've always rinsed my mouth out with water. Partly to get rid of any excess toothpaste and partly because it just felt like the right thing to do. However, my children came back from the dentist recently and they had a very important message for me.

    Daddy, you need to stop rinsing your mouth out after brushing your teeth
    
    Me: Wait, what?
    
    Apparently, rinsing your mouth after brushing gets rid of all the fluoride from the toothpaste which is designed to protect your teeth.
    
    I've always had sensitive teeth, but always put it down to just 'one of those things'. It's not something that anyone has ever said to me and we used to have our own 'rinsing cups' when we were growing up.
    
    Now I have to unlearn part of my brushing routine to give my teeth the best chance to recover and my children watch me like hawks whenever they're in the bathroom with my to make sure I don't rinse ever again! #lessonlearnt #lifelessons #longscrew #screw #einstein", category: leisure_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: family_guy, content: "Saw a post about someone confiscating a game console for 18 years, so here's mine...

    My uncle had a habit of losing things and gave us a candy as a reward if we found it for him. So, all of us cousins would try and find an opportunity to find his lost stuff for him lol
    
    When I (16F) was like 5, we were at his place when I saw him accidentally drop his car keys near the sofa. I decided to wait for him to realise his keys were missing. But then I thought that if someone else find them before me, they'll get the candy. So being the little smartass I was, I kicked the keys under the sofa
    
    My cousin saw me doing that and took them out. Oh hell no, I snatched them from his hand and ran. The closest thing to me was a flower pot with some pebbles and artificial roses in it. I tossed them in there and covered them with pebbles. I distracted him by asking him to play hide and seek. I was planning to give the keys to my uncle before leaving. Guess who else got distracted and forgot about them...... me
    
    After a while, my mom asked me come as they were leaving. So, we got home. Turns out.... my uncle ripped the whole house apart after we had left. He must have promised his kids loads of candies lmao but they couldn't find it. Idk what happened next but I never got questioned about them. He probably got a new copy or something
    
    Many, many years later, he sold his house and moved out of the country with his family. Well, a few days ago, we couldn't find the t.v remote and my mother was looking for it in the flower pot. I thought it was ridiculous and asked her why she was doing that. She started laughing and told me about how my uncle lost his keys and when he was moving out, he found his car keys in the flower pot. Do you remember it? Of course you don't, you were so little. Well, I do. He called me and was freaking out so much
    
    I was like........ holy shit. I had totally forgotten about that. I'm so embarrassed now. I did THAT just for the sake of a candy which I never got. I don't know, should I apologise to him now or let it go? TIFU by hiding them and forgetting about them? I'm gonna tell my mom first
    
    Edit: lemme clear the confusions regarding the age and timeline. This happened back in 2010 when I was 5. My uncle left the country in 2017, I was 12 then. But I just found out about the keys drama a few days ago. 16 now aha! #screw #longscrew ", category: family_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: golden_boy, content: "Alright, so. I, like most people my age, go to school. I however, unlike most people, dont use the school bathroom no matter the circumstances, as it is disgusting to the point where i want to puke just seeing it.

    I was sitting in french class when i had to poo. It was the last class and only 10 minutes left, so i thought i might as well just wait till i get home.
    
    I get out of class and talk to my friends for a bit, when i start not only feeling a huge need to poop but also dizzyness and nausea. It became pretty severe, but i decided to just hop on to the bus and wait till i get home anyway.
    
    I felt fucking horrible, and slowly noticed i was losing vision, as color became less and less saturated. I took a sip of water and casually continued sitting, and it was now that my entire face felt cold as fuck and i started intensely sweating in my hair specifically, as i was trying to hold in the poop. My vision then went to shit, it looked like a black and white film and i had a bunch of noise in my ears, so i immideately decided to open the empty compartment of my backpack in case i had to puke and chugged the rest of my water. I also have no idea why, but i relaxed my legs and arms.
    
    I slowly regained color again, and by now, while i sit here on the toilet writing this, dont have any issues with vision and feel fine.
    
    Perhaps i should see a doctor? #screw #butthurt #alive #lessonlearnt #lifelessons", category: leisure_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: cool_girl, content: " I accidentally left my back door unlocked, and a drunk woman was able to break into my house. I called 911, and had her arrested for burglary. #lessonlearnt #lifelessons #screw #memoryissues", category: household_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: cool_girl, content: "Life is fucking crazy. I'm kinda on the DL since this goth group is after me. No home, no job, and I haven't been doing much. Need to look for a new lease but I've been chilling with my friends and partying with them to decompress. #longscrew #satanic #screw #badchoices", category: friends_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
post = Post.create(user: cvo_cofounder, content: "forgot it was my birthday yesterday, sang happy birthday to a colleague with whom I don't see eye to eye only to find that they had taken part in buying me a secret birthday present. #screw #bday", category: leisure_category, created_at: DateTime.now - (rand * 8))
post.reactions.create(user: cool_girl)
post.reactions.create(user: family_guy)
post.reactions.create(user: cvo_cofounder)
post.reactions.create(user: golden_boy)
post.comments.create(user: cool_girl, content: "This too shall pass")
post.comments.create(user: family_guy, content: "Oh no! I feel so sorry for you")
puts "Finished category"
