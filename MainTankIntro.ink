// Go into the main tank. They explain where you are and to be careful, fish go missing all the time and they don't know why. You tell them you want to break them out and they tell you they want to leave, and have it all worked out including getting out of the tank, but they can't leave the corridor. You explain that the octopus can do that. They don't know who you mean, but they trust you.

VAR fish_trust = 0
VAR tank_plan = 0



=== FishConversation ===

As you approach the tank, the fish gather close to the glass, excitedly watching your progress. There seems to be one member of each fish species you've ever seen, and many more you don't recognise. They swim together forming a kaleidoscopic show of colours and patterns, chattering in one voice made of hundreds.
"Who are you? Welcome! How did you get out? No one has ever escaped before!"
* "The octopus seems to escape all the time." 
    
* "I had help[."]," you say.
    The fish are shocked. "Who helped you? How? The captor is the only one who can move fish." 
    "The octopus lifted the lid off my tank," you reply. "He was very kind."
    
- "Who is the octopus? We know everyone in this room, except newcomers like you. Were you caught together?"
You turn around to point out your new friend who had so nicely shown you a way out. He is no longer in the room. You are confused why he left, but choose to carry on the conversation.

* "You must have seen him.["] Slimy fella, too many legs, he can climb anything and hop between the tanks." The fish stare blankly at you, not recognising the creature you're describing.
    "Maybe he can't get into this tank. It's difficult to get in here, but we think there's a way out!" 
    ~tank_plan = 1
    -> MistrustfulFish
    
* "I only arrived yesterday, he seems to have been here much longer." 
    "Which aquarium were you transferred from?" the fish ask excitedly.
    You are confused. "Aquarium?"
    "Your previous tank, where was it? Melbourne? Sydney? Where did you live before this?"
     "This is my first time in a tank. Yesterday I was in the ocean". You feel wistful as you think of your home.
    
    "The Ocean!? Shouldn't you still be in quarantine?!" This shout came from a worried looking puffer fish. // TODO name fish?
    -> MistrustfulFish

// You must gain the trust of the fish or your only option will be to leave on your own
= MistrustfulFish 

{!The shoal suddenly flickers and the fish turn away from you, but you can still hear them. "Shush! We shouldn't tell strangers! Can we trust turtles? Fish have to stick together!!"}
{fish_trust > 2: -> EnterTank}
The fish seem mistrustful of you.

    
    * "Are none of you from the ocean?["] I have seen many fish who look just like you out on the reef!"
        "Really? Fish who look like us? Like me? No, we all look different. A fish like me? Our families, out in the ocean? It can't be true." The shoal comes alive with chatter, the fish jostling and debating.
        "It's true," you say. "Clownfish, your family live in the anemonaes, you all have different stripe patterns. But Yellow Tang, you all look the same! I used to have a friend who looked identical to you."
        
        A few of the fish are excited, and turn back to face you.
        ~ fish_trust +=1
        -> MistrustfulFish
    
    * "I refused to leave here without you!["] The octupus told me how to escape, but I saw that you were still trapped and couldn't just leave."
        The fish look suspicious. "You can leave?"
        ** "Why should I tell you, if you don't trust me?"
            The shoal seems to pause for a moment, indecisive.
            You sigh, and tell them. "We can leave through the pipe over there. Now we just need to get you out of this tank!"
        ** "Yes!["] The drain over there leads back out to the ocean, we just need to remove the grill, which the octopus can do."
            The shoal seems to pause for a moment, indecisive.
            "So if we can leave the tank, we can escape to the ocean?"
            *** [Nod]
            
        --
        ~ fish_trust +=1
        -> MistrustfulFish
    
    *["We have to stick together"] "Exactly! We have to stick together, all the sea creatures."
        The Fish seem unimpressed. "All of us, stick together? What about the mantis shrimp!? Fish have to stick together."
            ** "Who is the mantis shrimp?"
            The fish are nervous. "You said that all sea creatures need to stick together, but there is a shrimp in this tank who attacks other creatures."
            "That's terrible! Why would the captor put you in a tank with a predator? I would not hurt you, I want to help you." 
            ** "If we help each other, we can escape together.["] We all deserve to live in freedom!"
            --
            ~ fish_trust +=1
            -> MistrustfulFish
    
    * Turn away and leave.[] Why should you go out of your way to help mean fish like these?
        "How rude! I come all this way to talk to you and you don't trust me?"
        You turn away from the tank and propel yourself towards the drain, ready to head back to sea.
        -> lonely_escape

= EnterTank
The group of fish have visibly calmed, they seem to trust you again.
// TODO name / describe fish better
An older fish comes forward out of the crowd. "You said that there's a way out of this room, if we can leave our tank?"

* "Yes, see this grate?["] It leads to the ocean! My friend the octopus can help us open it when we escape.

// TODO another option?

- The fish all look at each other with some excitement. This may be more hope than they have felt in years.
"You should come in the tank, I feel we have much to discuss"

* "Can't we keep talking through the glass?"
    "It's too risky, if the captor comes through here he'll see you!"
    The mention of the captor made the other fish tense. He was clearly not well liked. The older fish continued talking regardless.

* "How can I get in?"

- "There is an automated feeder on the side of the tank. We've worked out how to open it, but we can't leave through it yet because it's dry outside."
You make your way towards the feeder, and follow the fish's instructions to clamber past the gate and into the tank.

// TODO replace with puzzle?

-> END
