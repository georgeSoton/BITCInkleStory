=== main_tank_again ===

You return to the main tank.
Do you need to talk to anyone else before putting the plan in motion? 
* Yes
->fish_options_two
*Nope
->plan_in_motion

=== fish_options_two
#right:
Which fish would you like to approach?

    +[Speak with the Pufferfish]
    -> talk_to_pufferfish

    +[Speak with the Goby at the base of the tank]
    -> talk_to_gobi

    +[Speak with the old Wrasse]
    -> talk_to_old_ones
    
    +[Speak with the young fish who are eagerly watching you]
    -> talk_to_young_ones
    
    +[Speak with the Parrotfish]
    -> questions
    
    +[Talk to the Mantis Shrimp]
    ->convince_mantis
    
    +[No one]
    -> plan_in_motion
    
=== plan_in_motion
    // tell fish that the octopus is willing to help
    // tell fish that the mantis is not the bad guy if you have promised to do so
    // ask the goby to block the outlet if you have conviced him to
    // water level rise?
    ->great_betrayal

