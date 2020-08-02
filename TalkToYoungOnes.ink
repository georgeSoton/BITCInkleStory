// File for the Young Fish interaction.
// This should be reachable from MainTank.ink
=== talk_to_young_ones

A group of young fish excitedly group around you to hear stories of the great ocean.
#right:angelfish
* [Approach the group of young fish]
    "Ohhhhh we haven't seen one of you before."
    -> young_ones_converse_loop
* [Talk to someone else]
    You decide not to interrupt the young excitable fish. You swim back and talk to another fish. 
    -> fish_options
    
= young_ones_converse_loop
    *"I am a turtle."
    "Turtle, cool name!"
    **"Thanks...."
    -> young_ones_converse_loop
    *"How long have you been here?"
        "We were born here silly!"
        **"Have you ever head of the sea?"
            "The older fish talk about the sea a lot, sounds like an amazing place!"
    *"I have a plan to get out of here"
        **"We've always wanted to see the world outside of this place. The old ones talk about the big ocean with it's huge playground and lot's of types of friends! We want to make more friends! We are bored of the same rocks here."
        

- "What if I told you I could get you out of here? Experience the big wide ocean?"
"Oh my goodness!!! Can you really help us??"
*"Yes, I have made a lot of friends and we have an amazing plan."
   "How do we help? We wanna help!"
   -> young_ones_converse_loop_two

=young_ones_converse_loop_two
*"You are too young to help.*
    "That is what everyone says. But we can help! It isn't fair to leave us out!"
    -> young_ones_converse_loop_two
*"Just use your excitable energy to keep up morale and help convince us to get everyone on board!
    "We can do that leave it to us!"
    The young fish swim away chatting to each other about what they will get to see and do with their new found freedom. You turn back smiling and head back to the centre of the main tank. 
    ~ convinced_young_fish = true
    -> fish_options