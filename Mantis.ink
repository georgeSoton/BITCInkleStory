VAR mantis_trust = 0

=== convince_mantis ===
= approach
You approach the old mantis shrimp's cave tentatively. As you approach the entrance you hear the rustle of movement inside. #track:TrackLoops/KindaGuzheng #right:Mantis
* ["Excuse me"]
    "E-e-excuse.. m-me"
    Your nerves are getting to you, but you stand your ground.
    The shrimp appears out of the darkness, a glowing shimmering rainbow of colours.
* [Some other, bolder greeting]
* [Optional greeting based on turtle personality]
- The shrimp appears out of the darkness, a glowing shimmering rainbow of colours.
->first_talk
        
= first_talk
{"What do you want?" he barks at you|He doesn't look impressed|He shuffles back into the darkness of his home. This converation is over.-> END}
* "Sorry to bother you["], I was just wondering-" 
    "Quit yapping on"
    -> first_talk
//How do I make the conditional bits show? HELP!
* [{"I need your help with something" | "I have a plan, and need your help"}]
"Get the hell out of here!"
He clearly has no time for you, and raises up a little, arms poised ready to lash out.
    ** Run
        -> END
    ** [Stay]
        You know this guy's got a solid punch, and you're no fighter yourself...
        *** Hide in your shell
        You tuck your head inside your shell, and just in time, as you're thrown up into the open water. You come back down and come spinning to a stop, and timidly poke your head out. You're halfway across the tank, and the mantis shrimp is back inside his cave and out of sight.
        ->END
        *** [Stand your ground]
        You close your eyes in terror, but refuse to so much as flinch as he prepares his strike. He lashes out at you but all you feel is a small thud on your shell, and you skid across the gravel slightly. The mantis looks at you with a curious expression.
        ****...
        You're a tough one, kid. What's your deal?
        ~ mantis_trust++
        -> questions1




= questions1

* "I think I can get us all out of here"[] you say, brimming with hope.
The mantis rolls his eyes. "I've heard this all before, you must be new here, quit bothering me." He starts to shuffle away.
    ** "The Pufferfish sent me."[] you tell him. "They said you weren't a bad guy... not like the other say."
        He shuffles back foward slowly.
        "The Pufferfish has always been a kind soul... but that doesn't say much for your little plan."
        ~ mantis_trust++
        -> questions2
    ** "I hear you eat people..."
        He stops dead in his tracks.
        "I beg your pardon?!"
        ***[Back pedal] I don't think the rumours are true, the Pufferfish told me so too, they've got you all wrong.
        He looks at you thoughtfully.
        "You know the Pufferfish?"
        ****"Yes[!"], that's why I'm here! They sent me!"
            He nods slowly.
            "Okay...but that doesn't say much for your little plan."
            ~mantis_trust++
            ->questions2
        ***"It's just what people say[..."], right? That there are fish that go missing and you're the reason why?"
            He shakes his head angrily.
            "Get the hell away from my cave, idiot!"
            ~mantis_trust--
            ->fish_options


=questions2
* [Explain the plan] "Oh, of course, the plan! It's simple really, there's a grate on the floor that leads right to the ocean!"
-"Not in this tank there isn't"
    * "But out there there is!" you gesture to the other side of the glass.
    - He continues to look unimpressed.
    * {convinced_goby} "We can block the outlet[!"], and jimmy open the feeding hatch, we can get out there! I sorted it all out, the Goby will dig up enough sediment to jam the whole thing up."
        The Mantis Shrimp eyes you up.
        "Still doesn't sound foolproof, who's to say this'll work?"
        ~mantis_trust++
    * "My Octopus friend says he can open the hatch for us!"
        "Pah!" the Mantis barks, making your jump a little. "That scumbag will never help you!"
        ~mantis_trust--
        ** [Defend him]
        "But he's been so helpful, he got me out of the quarantine tank, and I'm certain he can open that drain to the ocean."
        The Mantis seems unmoved. "I'll believe that one when I see it."
        ** [Change the subject]
- ->taking_with_us


=taking_with_us
{"We'll take everyone with us!" you exclaim.|He looks mildly interested, and nods at you to go on.|He's starting to get bored.|He's clearly had enough of all this, grumbles something under his breath, and shuffles away. -> end}
* {convinced_young_fish}[The Young Fish] "The young shoal can't wait to go exploring, they've heard such amazing tales of the sea... and they're all true of course! They'll have such an amazing time!"
->taking_with_us
* {convinced_old_fish}[The Older Fish] "And the older fish want to go too! There's no use wasting their precious time left in this glass prison, they want to really live."
~mantis_trust++
->taking_with_us
* {friends_with_puffer} [The Pufferfish] "Of course the Pufferfish will come with us. They'll be so happy out in the wider ocean, captivity hasn't been kind to them, has it? It always brings out the worst in people..."
~mantis_trust++
->taking_with_us
* {convinced_goby} [The Goby Fish] "The little Goby fish wants to come too, obviously. They've not really found their place here, but there's a whole world of other Gobies out there for them to find. Maybe they'll finally find their true home."
~mantis_trust++
->taking_with_us
*[The Mantis Shrimp]
"Including you. I don't want to leave anyone behind, and there's a whole ocean out there for you to see."
~mantis_trust++
->taking_with_us

=end
- You wonder just how convinced the Mantis Shrimp is, but decide to leave him to his cave for now.
->fish_options

