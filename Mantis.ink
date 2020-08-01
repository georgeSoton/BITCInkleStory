-> convince_mantis
=== convince_mantis ===
= approach
You approach the old mantis shrimp's cave tentatively. As you approach the entrance you hear the rustle of movement inside.
* ["Excuse me"]
    "E-e-excuse.. m-me"
    Your nerves are getting to you, but you stand your ground.
    The shrimp appears out of the darkness, a glowing shimmering rainbow of colours.
* [Some other, bolder greeting]
* [Optional greeting based on turtle personality]
- The shrimp appears out of the darkness, a glowing shimmering rainbow of colours.
->first_talk
        
= first_talk
{"What do you want?" he barks at you|He doesn't look impressed|He shuffles back into the darkness of his home. This converation is over.-> END}
* "Sorry to bother you["], I was just wondering-" 
    "Quit yapping on"
    -> first_talk
//How do I make the conditional bits show? HELP!
* [{"I need your help with something" | "I have a plan, and need your help"}]
"Get the hell out of here!"
He clearly has no time for you, and raises up a little, arms poised ready to lash out.
    ** Run
        -> END
    ** [Stay]
        You know this guy's got a solid punch, and you're no fighter yourself...
        *** Hide in your shell
        You tuck your head inside your shell, and just in time, as you're thrown up into the open water. You come back down and come spinning to a stop, and timidly poke your head out. You're halfway across the tank, and the mantis shrimp is back inside his cave and out of sight.
        ->END
        *** [Stand your ground]
        You close your eyes in terror, but refuse to so much as flinch as he prepares his strike. He lashes out at you but all you feel is a small thud on your shell, and you skid across the gravel slightly. The mantis looks at you with a curious expression.
        ****...
        You're a tough one, kid. What's your deal?
        -> success




=== success
* "I think I can get us all out of here"[] you say, brimming with hope.
The mantis rolls his eyes. "I've heard this all before, you must be new here right?"
-> details


= details
{"No really!" you say.| "There's more..."}
* "There's an emergency drain!"
    He continues to look unimpressed. "Not in this tank there isn't"
    ** "But out there there is!" you gesture to the other side of the glass.
 -> details
* "---other details of the escape plan---"
 -> details
* "---more details---"
 -> details
-> END