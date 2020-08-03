// File for the Gobi interaction.
// This should be reachable from MainTank.ink

=== talk_to_goby
#right:goby
The Goby fish digs himslef down into the sand a little more {!when he sees you come near. He doesn't seem to like strangers}.

* "Hi there!" [] You greet the him with warmth. #player

    "H.. hello? Who are you?"   #goby
    
    ** "I'm a friend! Parrotfish sent me to talk to you"    #player
    
    "Oh, okay... I'm not sure about this." #goby
    
    ->talk_to_goby
    
    // TODO options
    
    ** [Dig yourself a place to sit nearby] #player #action

    As you start to dig, you can feel him getting excited.
    
    "Y..you like to dig?!"  #goby
    
    "Yeah! Although I usually do it in the dry, under water it's much more difficult"  #turtle
    
    "Well I'm a master of digging under water, I can move a lot of sand very quickly!"   #goby
    
    You finally manage to complete your little hole to sit in. Digging underwater was very difficult indeed. You settle down and turn towards the Goby fish.
    
    "Do you mind if I ask you a few questions?" #turtle
    
    "Oh, okay! What did you want to talk about?"    goby
    
    -> goby_questions

= goby_questions 

    *"Did you come from the ocean?"    #turtle

    "Oh no, I was born here! The ocean sounds scary! So many big hungry fish... And other Captors!"     #goby
    
    "But also lots of hiding holes, and really pretty reefs, and lots and lots of sand!"  #turtle
    
    "Really? Even more sand than here?" #goby
    
    **[Mention other goby fish]     #player #action
    
    ** [Ask about the digging]   #player #action


    * "Have you heard of the escape plan?"  #player


- 

-> fish_options