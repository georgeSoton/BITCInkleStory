// Go into the main tank. They explain where you are and to be careful, fish go missing all the time and they don't know why. You tell them you want to break them out and they tell you they want to leave, and have it all worked out including getting out of the tank, but they can't leave the corridor. You explain that the octopus can do that. They don't know who you mean, but they trust you.

VAR fish_trust = 0
VAR tank_plan = 0

-> FishConversation

=== FishConversation ===

As you approach the tank, the fish gather close to the glass, excitedly watching your progress. There seems to be one member of each fish species you've ever seen, and many more you don't recognise. They school forming a kaleidoscopic show of colours and patterns, and chatter in one voice made of hundreds.
"Who are you? Welcome! How did you get out? No one has ever escaped before!"
* "The octopus seems to escape all the time." 
    
* "I had help[."]," you say.
    The fish are shocked. "Who helped you? How? The captor is the only one who can move fish." 
    "The octopus lifted the lid off my tank," you reply. "He was very kind."
    
- "Who is the octopus? We know everyone in this room, except newcomers like you. Were you caught together?"

* "You must have seen him.["] Slimy fella, too many legs, he can climb anything and hop between the tanks." The fish stare blankly at you, not recognising the creature you're describing.
    "Maybe he can't get into this tank. It's difficult to get in here, but we think there's a way out!" 
    ~tank_plan = 1
    -> MistrustfulFish
    
* "I only arrived yesterday, he seems to have been here much longer." 
    "Which aquarium were you transferred from?" the fish ask excitedly.
    You are confused. "Aquarium?"
    "Your previous tank, where was it? Melbourne? Sydney? Where did you live before this?"
     "This is my first time in a tank. Yesterday I was in the ocean". You feel wistful as you think of your home.
    
    "The Ocean!? An outsider!"
    -> MistrustfulFish

// You must gain the trust of the fish or your only option will be to leave on your own
= MistrustfulFish 

{!The shoal suddenly flickers and the fish turn away from you, but you can still hear them. "Shush! We shouldn't tell strangers! Can we trust turtles? Fish have to stick together!!"}
{fish_trust > 2: -> EscapePlan}
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
    
    * "How rude! I come all this way to talk to you and you don't trust me?"
        You turn away from the tank and propel yourself towards the drain, ready to head back to sea.
        -> END
    
= EscapePlan
The fish turn back around, they seem to trust you again.
"You say that there's a way out of this room, if we can leave our tank?"
    * {tank_plan > 1} "Did you say you had a plan for getting out of this tank?" you ask.
        Their reply is cautious. "We think so. The plan is a little complicated though..."
    * "Yes, but first we should deal with this mantis shrimp.["] Where is he?"
        "He hides in the back left corner of the tank. It is too dangerous to go there though. Fish disappear every night."
        "That's terrible. I think that with my thick shell I'll be okay though. I'll talk to him."
        ->Mantis_Shrimp
    * "I'll need to go and talk to the octopus first, I'll be back soon"
    ->ReturnToTank

->END