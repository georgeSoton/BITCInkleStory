-> together_escape
=== together_escape
// I've added branch names incase we actually want to make this branch off

"We can't leave the others behind! This is no life to live!"

Octopus: "They are only fish. They cannot break out like you, they need water to breathe."

*   [We can find a way!] "We can find a way!"
    Octopus: "You are so innocent little turtle friend."
    -> innocence
*   [Surely you are clever enough to come up with something?] "Surely you are clever enough to come up with something?"
    Octopus: "Oh of course, but there are dangers here that you do not understand."
    -> innocence
    
= innocence

*   [What do you mean?] "What do you mean?"
    Octopus: "Fish keep mysteriously disappearing, I would not like to see you .... become a snack."
    -> mantis_snacks
    
= mantis_snacks 
    
*   [Do you know who it is?] "Do you know who it is?"
    Octopus: "... I .... have no clue. However, there is a rumour that the mantis shrimp in the corner of the tank has not been the friendliest in his past."
    -> mantis_bad
*   [Do you know what is causing this?] "Do you know what is causing this?"
    Octopus: "Not what, but there could be a who."
    Octopus: "The mantis shrimp has, let's say, a suspicious aura about him."
    -> mantis_bad
    
= mantis_bad

*   [I could investiage the mantis shrimp.] "I could investigate the mantis shrimp."
    The Octopus looks at you with a smile. 
    Octopus: "If you are brave enough."
    -> exit_tank_stage_left
*   [I'm sure if we get everyone on board, the mantis shrimp cannot hurt us all.] "I'm sure if we get everyone on board, the mantis shrimp cannot hurt us all."
    The Octopus looks at you curiously.
    Octopus: "If you are sure you can convince everyone."
    -> exit_tank_stage_left
    
= exit_tank_stage_left

*   [I am!] "I am!" you declare enthusiastically. 

    The Octopus pauses briefly and then stares at you. 

    Octopus: "I think you are making a mistake, but I will help you as I like your determination. It's adorable."
    
    The Octopus grins widely then points down the hallway.
    
 -   Octopus: "The tank is down there, good luck."
    
*   [Follow the way the Octopus points]
        -> END //put the next chapter link here. 
    
-> END