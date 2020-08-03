// File for the Young Fish interaction.
// This should be reachable from MainTank.ink
=== talk_to_young_ones
=talk_to_young_ones_start
#scene: MainTank
#left:turtle
A group of young fish excitedly group around you to hear stories of the great ocean.
#right:angelfish
* [Approach the group of young fish] #player #action
    You swim up to the fish, smiling.
    {!"Ohhhhh we haven't seen one of you before."} #angelfish
    -> young_ones_converse_loop
* [Talk to someone else] #player #action
    You decide not to interrupt the young excitable fish. You swim back and talk to another fish. 
    #right:
    -> fish_options
    
= young_ones_converse_loop
    *"I am a turtle." #player
    "Turtle, cool name!" #angelfish
    **"Thanks...." #player
    -> young_ones_converse_loop
    *"How long have you been here?" #player
        "We were born here, silly!" #angelfish
        **"Have you ever heard of the sea?" #player
            "The older fish sometimes talk about it, sounds like an amazing place! They're really grumpy though, it's hard to get them to talk about anything." #angelfish

        **"We've always wanted to see the world outside of this place. The old ones talk about the big ocean with its huge playground and lots of types of friends! We want to make more friends! We are bored of the same rocks here." #angelfish
        

- "What if I told you I could get you out of here? Experience the big wide ocean?" #player
"Oh my goodness!!! Can you really help us??" #angelfish
*"Yes, I have made a lot of friends and we have an amazing plan." #player
   "How do we help? We wanna help!" #angelfish
   -> young_ones_converse_loop_two

=young_ones_converse_loop_two
*"You are too young to help.* #player
    "That is what everyone says. But we can help! It isn't fair to leave us out!" #angelfish
    -> young_ones_converse_loop_two
*"Just use your excitable energy to keep up morale and help convince us to get everyone on board!" #player
    "We can do that leave it to us!" #angelfish
    #right:
    The young fish swim away chatting to each other about what they will get to see and do with their new found freedom. You turn back smiling and head back to the centre of the main tank. 
    ~ convinced_young_fish = true
    -> fish_options