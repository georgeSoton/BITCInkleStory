=== into_the_main_tank ===

Diving into the cool waters of the main tank, the scope of the amount of life inside the aquarium becomes apparent for the first time.

"Welcome to the tank!" the fish who you spoke to before greets you.  "You should now be able to hide if the captor comes through, despite you not having stayed in your quarantine tank for long enough."

* Look around #player #action

You see many different species swim around as you make your way towards [FISH_NAME_1]. Many eye you suspiciously and yet the warmth of the community brightens your heart.



-> inside_tank_intro

= inside_tank_intro
{!"Welcome to the tank! You should now be able to hide if the captor comes through, despite you not having stayed in your quarantine tank for long enough."}
{fish_trust > 2: -> fish_options}

* "The captor?"

// TODO
    -> inside_tank_intro

* "Quarantine?"

// TODO
    -> inside_tank_intro


* "Can I meet some other fish?

// TODO
    -> inside_tank_intro

== fish_options

//  List of different fish that you can interact with

"There are [THESE FISH] that you can talk to"


    *[Speak with i]



    -> END // TODO replace with GOTO new file

    *[Speak with j]



    -> END // TODO replace with GOTO new file

    *[Speak with k]



    -> END // TODO replace with GOTO new file


//  Option of who to choose to interact with.

// Possible information to be gained, unlock dialogue options with the mantis shrimp

//  Go back to the original choice and add "Leave before the humans find you here"

-> END