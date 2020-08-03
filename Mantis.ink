VAR mantis_trust = 0

=== convince_mantis ===
->approach
= approach
#scene:MainTankMantis
#track:KindaGuzheng
#left:turtle
You approach the old Mantis Shrimp's cave tentatively. As you near the entrance you hear the rustle of movement inside.
* ["Excuse me"] "E-e-excuse.. m-me" #player
    Your nerves are getting to you.
* "Mantis Shrimp! I've come to talk to you." #player
-
The Mantis Shrimp appears, still cooped within the shade of his cave.
"What do you want?" he barks. #mantis
-> first_talk
        
= first_talk
#right: mantis
{&|The Mantis Shrimp looks impatient|He shuffles back into the darkness of his home. This converation is over. ->fish_options} #mantis
+ "Sorry to bother you["], I was just wondering-" 
    {&"Quit yapping and get out."|"Leave, kid."|"I don't want to talk, go away."} #mantis
    -> first_talk
//How do I make the conditional bits show? HELP!
+ [{"I need your help with something" | "I have a plan, and need your help"}]
"Leave me alone!" #mantis
He rears up, arms poised to lash out.
    ++ Time to run away! #player #action
        As you scamper back to the middle of the tank, you hear the Mantis Shrimp retreat into his cave.
        -> fish_options
    ++ Hold your ground. #player #action
        You know this guy's got a fearsome punch, and you're no-one's idea of a fighter...
        
        +++ Hide in your shell and brace
        You tuck your head inside your shell, and just in time. The Mantis Shrimp's claw lets out a deafening crack, and you're sent spinning away.
        
        But it's not as bad as you expected. Maybe he's lost his touch?
        
        "That was a warning shot." #mantis
        "Leave. Now." #mantis
        You don't know if you could take another shot at full force.
        ---
        
        +++ Flee #player #action
            You decide not to test the Mantis Shrimp's strength, and make your way back to the middle of the tank.
                -> fish_options
            
        *** [{visit_mantis: Tell him the pufferfish sent you}]
            "The pufferfish wanted me to talk to you!"[] you shout, your echo ringing back in your shell. #player
            He isn't going to hear you while you're hunkered down in here.
            **** Come out of your shell and tell him #player #action
                You emerge. The Mantis Shrimp doesn't strike.
                "The pufferfish wanted me to talk to you." you say, nervously. #player
                The Mantis Shrimp relaxes, the terrifying tension in his claws disappears.
                "That old fool. What's he doing sending you my way?" he asks. #mantis
                ***** "He knows the other fish have the wrong idea about you. He told me the truth." #player
                    The Mantis Shrimp scoffs. "And what truth is that?" #mantis
                    "That you're not hurting anyone. That the disappearances are due to disease and I have nothing to be afraid of coming here." #player
                    Despite your words, you still feel fairly nervous
                    "He's a paranoid old balloon, but he's right about one thing. I'm not going to hurt anyone." #mantis
                ***** "We're escaping, and he wants you to come with us. #mantis
                    The Mantis Shrimp scoffs. "Sentimental balloon."
            ----
            "Well you're here now, kid. Might as well get into it." #mantis
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

