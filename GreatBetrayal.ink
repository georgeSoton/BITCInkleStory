->great_betrayal
===great_betrayal
It's working! You can't believe it, but everything has come together, the outlet is blocked, the water is rising, and the feeding hatch is open.
Everyone's ready to go, braced for freedom. Well, nearly everyone, but not everyone was ready to be saved.
It's time.
* [Go to the hatch]
    You swim up to the hatch and suddenly you're freefalling. It's terrifying but exhilerating, and you know you're on your way to the ocean.
    You hit the floor and come skidding to a halt on the wet floor, sliding towards the closed hatch.
    **...
    That's weird, it should be open by now, the fish won't last long out here on the aquarium floor...
    You look around for the octopus, maybe he just got the timing wrong, but there's time to put this right. -> confront_octopus
* [Encourage the other fish through]
    You wave the fish through one after the other (TODO insert specific information about friends, some conditional on earlier conversations)
    They fall quite spectacularly to the floor, but there's enough water pooled on the floor now for them to land on, and they slide towards the closed hatch.
    **...
        That's weird, it should be open by now, the fish won't last long out there on the aquarium floor...
    You look around for the octopus, maybe he just got the timing wrong, but there's time to put this right.
    *** [Leave the tank]
    He's clearly not here in the main tank, and most of the fish are out on the aquarium floor now so you rush to the hatch to try to find him. -> confront_octopus
    
= confront_octopus
"Sorry, my little friend, I really wasn't sure you'd pull this off, but I can't let you get away with it." #octopus
The octopus is up on the wall near the hatch, looking down at the chaos.
*"What are you doing?! Open the hatch!" #player
    The octopus laughs.
    "Still so naive, you poor thing. Why would I want anything to change in this place? I can come and go as I wish, and have all the midnight snacks I could ask for" #octopus
        At that, he starts looking around at the fish flopping about wildly on the aquarium floor.
        ->working_it_out 
*"I should have known." #player
    "I did wonder when you'd catch on, I guess you know already why I can't let you all go." #octopus
    **"It's so obvious." #player
        He laughs, "You smart cookie you, it's just a shame you're too late to save your precious friends now."
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
        "The owners of this place are so dumb. A fish goes missing here or there and they don't even notice. And even if they notice anything, they don't have a damn clue it's me. They don't even know I can get out."
        He sighs, smug to have finally told someone his great master plan.
        "Now one or two fish, here and there, has been perfect. But all the fish go missing in a single night? That'll mean new safety precautions, maybe even cameras. How am I supposed to live the high life then? No, this is much better."
        ** "You're a monster!"
            "And you're a little trouble maker. <>
        ** "That's so clever."
            "Why thank you. <>
        - Now if you don't mind I'm going to have a small feast before those dumb humans get back."
        -> all_the_fish_die
        
= all_the_fish_die
    You can't watch. You didn't know them long, but you feel like you knew them well. There's nothing you can do now.
    -> END