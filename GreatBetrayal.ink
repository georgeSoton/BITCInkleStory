VAR convinced_mantis = false
===great_betrayal
#scene: AquariumFloor
#left:turtle
#right:
It's working! You can't believe it, but everything has come together, the outlet is blocked, the water is rising, and the feeding hatch is open.
Everyone's ready to go, {convinced_mantis: even the Mantis Shrimp, who's come out of his cave. Most of the fish give him a wide berth, but he pays them no mind.| Well, nearly everyone, but not everyone was ready to be saved.}
It's time.
* [Go to the hatch]
    You swim up to the hatch and suddenly you're freefalling. It's terrifying but exhilerating, and you know you're on your way to the ocean.
    You hit the floor and come skidding to a halt on the wet floor, sliding towards the closed hatch.
    **Closed?
    That's weird, it should be open by now, the fish won't last long out here on the aquarium floor...
    You look around for the Octopus, maybe he just got the timing wrong, but there's time to put this right. 
    -> confront_octopus
* [Encourage the other fish through]
    You wave the fish through one after the other //(TODO insert specific information about friends, some conditional on earlier conversations)
    They fall quite spectacularly to the floor, but there's enough water pooled on the floor now for them to land on, and they slide towards the closed hatch.
    **Closed?
        That's weird, it should be open by now, the fish won't last long out there on the aquarium floor...
    You look around for the Octopus, maybe he just got the timing wrong, but there's time to put this right.
    *** [Leave the tank]
    He's clearly not here in the main tank, and most of the fish are out on the aquarium floor now so you rush to the hatch to try to find him. You throw yourself through the open hatch, grateful for the pooling water on the floor.
    -> confront_octopus
    
= confront_octopus
"Sorry, my little friend, I really wasn't sure you'd pull this off, but I can't let you get away with it." #octopus
#right:octopus
The Octopus is up on the wall near the hatch, looking down at the chaos.
*"What are you doing?! Open the hatch!" #player
    The Octopus laughs.
    "Still so naive, you poor thing. Why would I want anything to change in this place? I can come and go as I wish, and have all the midnight snacks I could ask for." #octopus
        At that, he starts looking around at the fish flopping about wildly on the aquarium floor.
        ->working_it_out 
*"I should have known." #player
    "I did wonder when you'd catch on, I guess you know already why I can't let you all go." #octopus
    **"It's so obvious." #player
        He laughs, "You smart cookie you, it's just a shame you're too late to save your precious friends now." #octopus
        You look around at the fish flopping about on the aquarium floor. Your friends are gasping for breath. You can't believe this is happening, they trusted you.
        -> all_the_fish_die 
    ** "Umm..." #player
    He laughs, "Not as smart as you look, huh? Why would I want anything to change in this place? I can come and go as I wish, and have all the midnight snacks I could ask for" #octopus
        At that, he starts looking around at the fish flopping about wildly on the aquarium floor.
        ->working_it_out
        
= working_it_out
        * "Snacks?" #player
        "Are you going to make me spell it out for you?" #octopus
        ->working_it_out
        * ["The missing fish!"] "The fish going missing.... that's YOU?!" #player
        The octopus slaps two of his tentacles together in a slow meaningless rhythm. You have no idea what he's doing but it feels like he's mocking you.
        "The Captor is so dumb. A fish goes missing here or there and they don't even notice. And even if they notice anything, they don't have a damn clue it's me. They don't even know I can get out."  #octopus
        He sighs, smug to have finally told someone his great master plan.
        "Now one or two fish, here and there, has been perfect. But all the fish go missing in a single night? That'll mean new safety precautions, maybe even cameras. How am I supposed to live the high life then? No, this is much better."    #octopus
        ** "You're a monster!"  #player
            "And you're a little trouble maker. <>
        ** "That's so clever."  #player
            "Why thank you. <>
        - Now if you don't mind I'm going to have a small feast before the dumb Captor gets back."  #octopus
        -> all_the_fish_die
        
= all_the_fish_die
    You can't watch. You didn't know them long, but you feel like you knew them well. There's nothing you can do now. 
        {convinced_mantis: -> mantis_saves_us |->END}
    -> END
    
= mantis_saves_us
*[...]
- "Not so fast!"  #mantis
*[...]
- You turn and look. You can hardly believe what you're seeing. The mantis shrimp steps forward.
#right:mantis
"Get your spineless slimy behind down here, and face me like a crustacean!" #mantis
*[...]
- The Octopus slides his way down the wall to the floor, chuckling as he goes.
"And what are you going to do about it, little guy?"    #octopus
The Octopus towers over the Mantis Shrimp, you shudder to think of what's coming next, but can't bring yourself to look away.
*[...]
- The Mantis Shrimp saunters up, clicking his claws together menacingly.
"You won't get away with this, murderous scum!" #mantis
The Mantis Shrimp raises slightly on his hindlegs, you've seen this before and you know what's coming, and something tells you he won't pull any punches this time...
*[...]
- <size=50><i>BANG</i></size> # octopunch
You must have blinked and missed it, the Octopus is reeling, and has turned a pale shade of off white.
* "You did it!" # player
    The Mantis Shrimp turns to you, "We don't have much time, we need to save them." # mantis
   
* "Quick, the fish!!!" #player
- You look around at the chaos you've accidentally unleashed, and your friends still struggling for breath in the shallow water on the floor.
"But I can't open the hatch, it's so...fiddly" you tell the Mantis Shrimp, gesturing with your flippers. #player
You feel helpless. 
"Show me this hatch I've heard so much about" he tells you. #mantis
* [Rush to the hatch]
-You glide across the floor as fast as your flippers will push you, until you reach the hatch.
"Here! It's got a fancy handle to open it." #player
The Mantis Shrimp looks at it for a moment, deep in thought. Every second you stand there you know your friends are suffering because of you, but you don't dare interrupt his thoughts.
*[...]
-"Stand back, little one." he tells you. #mantis
You want to remind him he's much smaller than you are, but you bite your tongue. There are bigger fish to save right now.
*[Move away]
*[Stay put]
    "Unbelievable, get out of my way."  #mantis
    He sends you a warning shot with his arms.
-You move back away from the hatch and watch the Mantis with baited breath. 
*[...]
- <size=50><i>BANG</i></size>
This time you keep your eyes on the Shrimp no matter what, and see his almighty arms shoot out and blow the drain cover right off. You feel thankful he held back when he hit you with those arms.
* [Jump down the drain, alone]
    #right:
    -> lonely_escape
* [Push your friends to safety]
    You rush around the room, flapping your flippers, pushing your friends to safety.
    #right:
-> final_escape

= final_escape
You take one last look around the room. This is it, they're all safe now, and it's time to go home.
*[...]
#right:octopus
- The Octopus is curled up in the corner. Colour is slowly returning to his skin, and he seems to be coming around. Part of you pities this lonely creature, but you remember if it weren't for your tough outer shell you'd have been a midnight snack too, and you hurry to the drain before he can spot you.
*[Jump in]
#right:
-The water rushes around you, pulling you into the darkness, until you're suddenly plunged into the ocean. When you come to a stand still, you take a look around you, and see all your friends celebrating. Even the mantis shrimp looks happy for once. You breathe a deep sigh of relief, and do a little twirl in the open water.
* [Go to the surface and look back]
 You can't help but take a peek at the prison you found yourself in, and quickly peer out of the water at the shoreline. The aquarium looms over the ocean, it's so much larger than you'd ever imagined.
 After a moment staring at that monstous place, you turn and swim back to your friends.
 #right:shoal
* [Keep swimming]
- Together, you keep swimming into the depths, revelling in the open space. It feels so good to have your freedom back, and even better being able to share it.
->DONE

