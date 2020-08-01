-> convince_mantis
=== convince_mantis ===
= approach
You approach the old mantis shrimp's cave tentatively. As you approach the entrance you hear the rustle of movement inside.
* ["Excuse me"]
    "E-e-excuse.. m-me"
    Your nerves are getting to you, but you stand your ground.
    The shrimp appears out of the darkness, a glowing shimmering rainbow of colours.
    -> first_talk
* [] 
        
= first_talk
{"What do you want?" he barks at you|He doesn't look impressed|He shuffles back into the darkness of his home. This converation is over.-> END}
* "Sorry to bother you["], I was just wondering-" 
    "Quit yapping on"
    -> first_talk
* [{I need your help with something | I have a plan}] -> second_talk

= second_talk
"Ugh, alright kid, what's the deal?"
* "I think I can get us all out of here"[] you say, brimming with hope.
The mantis rolls his eyes. "I've heard this all before, you must be new here right?"
-> details
*
*

= details
{"No really!" you say.| "There's more..."}
* "There's an emergency drain"
 -> details
* "---other details of the escape plan---"
 -> details
* "---more details---"
 -> details
-> END