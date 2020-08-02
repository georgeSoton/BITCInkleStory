// File for the Old Fish interaction.
// This should be reachable from MainTank.ink

=== talk_to_old_ones

You approach the group of older fish. They seem wary of your presence.

#right:wrassefish
* [Approach the group of older fish]
    "We have no interest in talking to outsiders."
    -> old_ones_converse_loop
* [Talk to someone else]
    You decide not to interrupt the older fish. You swim back and talk to another fish. 
    -> fish_options
    
= old_ones_converse_loop
    *"That's no way to speak to someone, I am only here to help."
    "There is no helping us. We have made something for ourselves here."
    **"But I have the octopus on my side, he can help us! He even offered to help me escape."
        "We have never heard of this 'octopus'. Do not give us false hope we are too old."
        -> old_ones_converse_loop
    *[Leave them alone]
        "If you are going to speak to me like that I will find someone else who will listen."
        You swim off to find more agreeable fish. 
        -> fish_options
    *{convinced_young_fish} "The younger fish seemed so excited about my plans to get you all out of here..."
        "You let the younger fish get there hopes up? They don't even know what is out there." 
        **"Is it truly a bad thing to have something to look forward to?"
            -> got_them_boys
        **"I know that fish go missing at night. I couldn't live with myself if one of them became a victim."
            -> got_them_boys

= got_them_boys
"You make a convincing argument. We will help you, but only for so they have a better chance than we."
*"Thank you, I won't let you down."
You swim back more determined than before. 
~ convinced_old_fish = true
-> fish_options

-> END