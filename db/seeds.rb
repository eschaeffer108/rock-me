users = User.create!([
    {username: "TheKraken", first_name: "Eric", last_name: "Schaeffer", email: "eschaeffer108@gmail.com", date_of_birth: Date.new(06-11-1991), password: "jaspercat", user: true, admin: true},
    {username: "Diogodofmetal", first_name: "Ronnie James", last_name: "Dio", email: "dio@metal.com", date_of_birth: Date.new(07-10-1942), password: "password", user: true, admin: true}
  ])

concerts = Concert.create!([
      {artist: "Hammerfall", show_date: "6-02-2018", show_time: "8:30", description: "If you're into old school medieval themed metal you'll probably like Hammerfall."},
      {artist: "Journey/Def Leppard", show_date: "6-21-2018", show_time: "8:00", description: "Come see Journey and Def Leppard on a double bill! If you're into glam rock this is a must see!"},
      {artist: "Iron Maiden", show_date: "7-15-2018", show_time: "8:00", description: "Scream for me Boston! Iron Maiden is doing another tour and are bound to play some classic hits as well as stuff from their new album! And you know Eddie the Head is bound to make an apperence!"},
      {artist: "REO Speedwagon", show_date: "7-29-2018", show_time: "8:00", description: "REO are coming round again and like they say you've gotta roll with the changes!"},
      {artist: "Metallica", show_date: "7-31-2018", show_time: "8:00", description: "Metallica are touring again for another round of their head banging metal! If you're a metal head you'll wanna catch this one!"},
      {artist: "Cheap Trick", show_date: "8-22-2018", show_time: "7:00", description: "Cheap Trick is a great band. They're probably going to play hits like Surrender and Dream Police! You won't wanna miss this one!"},
      {artist: "Ozzy Osbourne", show_date: "9-06-2018", show_time: "7:30", description: "Come see the prince of darkness Ozzy Osbourne on what he claims to be his last tour! No really, he means it this time."},
      {artist: "Alice Cooper", show_date: "9-22-2018", show_time: "8:00", description: "Come see the man, the myth, the legend: Alice Cooper! The king of shock rock will be performing his classic hits and you know he's bound to die on stage like he always does!"},
      {artist: "Mac Sabbath", show_date: "10-13-2018", show_time: "9:00", description: "You've seen Black Sabbath, now see the McDonald's themed parody band Mac Sabbath! With Ronald Osbourne on vocals as he sings hits like Frying Pan (Iron Man) and More Ribs (War Pigs). If you like Black Sabbath and McDonald's you're gonna love this!"},
      {artist: "Man o'War", show_date: "10-21-2018", show_time: "8:30", description: "If you're a fan of folk/medieval metal like Iron Maiden and Dio you'll probalby like Man o'War!"},
      {artist: "Tenacious D", show_date: "11-05-2018", show_time: "7:00", description: "That's right Jables and Kage are doing their first major tour in years! Could they be doing new songs from an album they may or may not be working on? Only one way to find out!"},
      {artist: "The Who", show_date: "11-21-2018", show_time: "7:00", description: "Come see the greatest band in the world, with original members Roger Daltrey and Pete Townshend! Plus Pete's brother Simon on rhythm guitar, and Ringo Starr's son, Zak Starkey, on Drums!"},
      {artist: "Sons of Cream", show_date: "12-05-2018", show_time: "7:30", description: "Come see the offspring of Cream carry on their fathers' legacy. You've got Jack Bruce's son Malcolm on bass and vocals, Ginger Baker's son Kofi on drums, and Eric Clapton's Nephew Will Johns on Guitar!"}
  ])

comments = Comment.create!([
        {title: "I love The Who!", body: "The Who are my all time favorite band! I saw them back in the 70s when Moon and Entwistle were still alive! I'm afraid I'll have to miss this one but I definitely would recommend seeing them even though it's just Townshend and Daltrey!", concert_id: 12, user_id: 1},
        {title: "Anyone looking to go to this?", body: "I love The Who and would love to see them live, or what's left of them anyways however I'd hate to go alone is anyone looking to go to this?", concert_id: 12, user_id: 1},
        {title: "I'd be down to go", body: "Yeah man I'm interested in going, none of my friends care much for The Who so I'm in the same boat as you.", concert_id: 12, user_id: 1},
        {title: "Great!", body: "Alright we should definitely meet up at the show then!", concert_id: 12, user_id: 1},
        {title: "These guys any good?", body: "I'm intrigued, but don't really know much about these guys. Anyone ever see them?", concert_id: 1, user_id: 1},
        {title: "Yeah they're worth seeing", body: "They're good, if you're on the fence I'd recommend checking out some of their stuff on Youtube.", concert_id: 1, user_id: 1},
        {title: "Cool thanks", body: "They do seem pretty cool, I might have to check them out. Anyone else planning on going?", concert_id: 1, user_id: 1},
        {title: "Wait is this real?", body: "This seems like a joke this is a real band?", concert_id: 9, user_id: 1},
        {title: "Yes this is a real band", body: "Yes they are real and they are great. The lead singer sounds just like Ozzy, and all their songs are just fast food parodies of Black Sabbath songs. Plus you've got the bassist dressed as Grimmace, the Guitarist is Mayor McCheese, and the Hamburglar is on drums.", concert_id: 9, user_id: 1},
        {title: "Alice Cooper Rules!", body: "I love Alice Cooper! Seen him several times and am going to this one too. Unfortunately I've invited two different friends and they both bailed so it looks like I'm going alone. I'd love to meet up with someone and grab a beer or something before the show though.", concert_id: 8, user_id: 1},
        {title: "I'll be there", body: "I too am going to the show alone but always love chatting with fellow Alice fans. What time do you think you'll arrive?", concert_id: 8, user_id: 1},
        {title: "Cool", body: "Awesome I'd love to meet you there. The show starts at eight, but I'm planning on getting there around 6:30-7.", concert_id: 8, user_id: 1},
        {title: "Sounds like a plan!", body: "Alright cool, why don't we meet by the entrance around 7 and we can get something to eat and a beer or something before Alice takes the stage", concert_id: 8, user_id: 1},
        {title: "Sounds good to me!", body: "Yeah sounds cool I'll see you at the show!", concert_id: 8, user_id: 1},
        {title: "No way! Are they really touring?", body: "Whoa Tenacious D is actually doing a tour?! I'd love to see this I'm a big fan. I can't believe they're actually touring again.", concert_id: 11, user_id: 1},
        {title: "Yeah it's crazy!", body: "I know they haven't done a full scale tour in years but looks like they are now! Is anyone looking to go to this?", concert_id: 11, user_id: 1},
        {title: "Yeah I am", body: "Yeah I've gotta see this. I think they're hilarious but I do genuinely enjoy their music as well.", concert_id: 11, user_id: 1},
        {title: "Last tour huh?", body: "Hmm I seem to recall him claiming this back in the early 90s, I guess it could be legit this time though.", concert_id: 7, user_id: 1},
        {title: "It probably is legit", body: "Yeah I am more inclined to believe it this time. Ozzy is old and Black Sabbath already officially broke up.", concert_id: 7, user_id: 1},
        {title: "Could be legit", body: "I think what Ozzy said is this will be the last time he's gonna do a full scale tour but he didn't rule out doing the occasional one off show.", concert_id: 7, user_id: 1},
        {title: "I don't know about these guys", body: "These guys are not their fathers so I'm hesitant to see them.", concert_id: 13, user_id: 1},
        {title: "They're not Cream", body: "If you consider it more of a tribute band, than a Cream clone you might enjoy it. They definitely do their dads' songs justice, but yeah it's not the real thing.", concert_id: 13, user_id: 1},
        {title: "You think they'll play Roll With the Changes?", body: "Not the biggest REO fan in the world but I do love Roll With the Changes because of Scott Zolak I'd be willing to check them out.", concert_id: 4, user_id: 1},
        {title: "They'll probably play Roll With the Changes", body: "Yeah man they usually do Roll With the Changes as their last song. They've got other good songs too. I'm going with a couple of mates, but if you're interested you're welcome to join us.", concert_id: 4, user_id: 1},
        {title: "We'll see", body: "Possibly, I'm still not sure if I'll go but if I do I'll take you up on that", concert_id: 4, user_id: 1},
        {title: "Metallica!", body: "Metallica rules! I'm trying to organize a group to go down to the show who's in?", concert_id: 5, user_id: 1},
        {title: "I'm down", body: "I'd be down! I love Metallica! I haven't seen them in years!", concert_id: 5, user_id: 1},
        {title: "I'm in", body: "I love Metallica but my friends don't care much for metal music. I'd love to go with some hardcore fans!", concert_id: 5, user_id: 1},
        {title: "Count me in", body: "Yes! I was hoping to find people who'd wanna see this!", concert_id: 5, user_id: 1},
        {title: "Sounds good", body: "I always catch Metallica when they come round this way, but my regular concert buddies are all busy so I'd be down", concert_id: 5, user_id: 1},
        {title: "Perfect", body: "Alright great, sounds like we've got a good group going. Why don't we all meet by the entrance around seven?", concert_id: 5, user_id: 1},
        {title: "Great", body: "Sounds like a plan! I look forward to meeting you all!", concert_id: 5, user_id: 1}
    ])
