// File for the germaphobe PufferFish interaction.
// This should be reachable from MainTank.ink

// You approach the pufferfish cave / home / ?
// They hide behind a rock, refuse to see you. They could get infected!
=== talk_to_pufferfish


As you come towards the pufferfish // TODO

-> pufferfish_converse_loop

= pufferfish_converse_loop

* [Approach the pufferfish]

    "Hey! Get away from me, I don't want to catch whatever you have!"
    The pufferfish dashes away behind a rock. You're not sure that it wants to keep talking.
    
    ** [Head back to the parrot fish]

        You decide to head back towards the parrot fish, he can point you to some of the other groups of fish.
    
        -> END // TODO goto tank hub
        
    ** [Keep your distance]
    
        You decide to try to talk to the pufferfish again, keeping your distance this time.
        -> pufferfish_converse_loop

* "Why are you so scared of me?"

    "You didn't spend enough time in quarantine! You could infect a load of other fish, some could even die. Don't you know that plenty of fish die from disease in this tank?!"
    -> pufferfish_converse_loop_2
    
= pufferfish_converse_loop_2

* "Isn't it the mantis shrimp[...?"] that kills the fish in this tank? That's what the parrot fish said!"

    "Of course not, mantis shrimp is a nice guy, everyone in this tank is just too stubborn to see it!"
    ->pufferfish_converse_loop_2
    
* "How does quarantine work?"
    
    "The captor keeps new fish that come from the ocean in a seperate tank for a while in order to make sure they don't bring in any parasites or diseases! It's a necessary part of keeping this tank safe!"
    -> pufferfish_converse_loop_3
        
= pufferfish_converse_loop_3

* "You like the captor?"

    "Of course not! He's the reason we're all stuck in here and I'd rather be in the open ocean, but at least here is safe."
    -> pufferfish_converse_loop_3

* "The other fish don't seem scared of me?"

    "That's because they think the mantis shrimp is the one killing the fish, when I know that it's the diseases that come from the outside."
    -> pufferfish_converse_loop_3

* "We didn't have quarantine in the ocean!"

    "Ah, how I miss those days! See, the tank is so sterile and small that any small change can put us all in danger. We have to be more careful in here than we would have to out there."
    
    ** "So if we found a way to escape[..."], would you want to come with us to the ocean?"
    
        The pufferfish took a second. To your suprise they seemed to be taking your suggestion seriously.
        "Yes" the pufferfish said tentatively "I think I would. It would become awfully lonely in here if all the fish went away...
        But the mantis shrimp! We can't leave him alone in here once we all go! You should go talk to him. Tell him I sent you, that should convince him to listen at least."
        
        -> END  // GOTO mantis shrimp

* [Turn away]

    You don't have time for a hysterical pufferfish, you head back to talk to the more sane fish in this tank.
    
    -> END // TODO goto tank hub
