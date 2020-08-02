// File for the germaphobe PufferFish interaction.
// This should be reachable from MainTank.ink

// You approach the pufferfish cave / home / ?
// They hide behind a rock, refuse to see you. They could get infected!
=== talk_to_pufferfish

As you come towards the pufferfish // TODO
#right:pufferfish
-> pufferfish_converse_loop

= pufferfish_converse_loop

* [Approach the pufferfish] 
    "Hey! Get away from me, germ bag!"  #PufferDeflated
    The Pufferfish looks panicked, takes a deep breath, and suddenly blows up like a big balloon. You take a hasty step back. #right:PufferInflated
    "Idiot! Don't you know how many fish die from disease in this place?! You could kill us all!"    #pufferfish
    **[...]
    You're not sure that he wants to keep talking.
    
    ***[Talk to someone else]

        You decide it's best not to bother the Pufferfish anymore. You head back and talk to another fish.

        ->fish_options
        
    *** [Keep your distance]
        You decide to try to talk to the Pufferfish again, keeping your distance this time.
        "It's okay, it's okay...I'll stay back, I just want to chat." #player
        This seems to put the Pufferfish at ease, and he slowly deflates back to normal size.
        #right:PufferDeflated
        -> pufferfish_converse_loop

* "Why are you so scared of me?" #player

    "You didn't spend enough time in quarantine! You could infect a load of other fish, some could even die. Don't you know that plenty of fish die from disease in this tank?!" #pufferfish
    -> pufferfish_converse_loop_2
    
= pufferfish_converse_loop_2

* "Isn't it the Mantis Shrimp[...?"] that kills the fish in this tank? That's what the Parrotfish said!"   #player

    "Of course not, Mantis Shrimp is a nice guy, everyone else in this tank is just too stubborn to see it!"    #pufferfish
    ->pufferfish_converse_loop_2
    
* "How does quarantine work?"   #player
    "The Captor keeps new fish that come from the ocean in a seperate tank for a while in order to make sure they don't bring in any parasites or diseases! It's a necessary part of keeping this tank safe!"    #pufferfish
    -> pufferfish_converse_loop_3
        
= pufferfish_converse_loop_3

* "You like the Captor?"    #player

    "Of course not! He's the reason we're all stuck in here and I'd rather be in the open ocean, but at least the Captor keeps us alive and safe."    #pufferfish
    -> pufferfish_converse_loop_3

* "The other fish don't seem scared of me?" #player
    "That's because they think the Mantis Shrimp is the one killing the fish. It's like they've never even spoken to the guy, he's obviously a really chill guy. No, it's the diseases that are killing us off, one by one, and you've probably brought a handful of nasty ones under that shell of yours. We're doomed." #pufferfish
    -> pufferfish_converse_loop_3

* "We didn't have quarantine in the ocean!" #player
    "Ah, how I miss those days! See, the tank is so sterile and small that any small change can put us all in danger. We have to be more careful in here than we would have to out there." #pufferfish
    
    ** "So if we found a way to escape[..."], would you want to come with us to the ocean?"  #player
    
        The Pufferfish pauses for a second. To your suprise they seemed to be taking your suggestion seriously.
        "Yes," the Pufferfish says, tentatively "I think I would. It would become awfully lonely in here if all the fish went away... #pufferfish
        But the Mantis Shrimp! We can't leave him alone in here once we all go! You should go talk to him. Tell him I sent you, that should convince him to listen at least." #pufferfish
        
        ~ visit_mantis = true  // allow go to mantis shrimp from main tank
        -> fish_options
* [Turn away]

    You don't have time for a hysterical pufferfish, you head back to talk to the more sane fish in this tank.
    
    -> fish_options// TODO goto tank hub
