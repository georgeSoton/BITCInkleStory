
=== Prologue
= PrologueStarts
The sun is shining. #track:justbass.mp3
 * I like the sun! # player # action
-
There is ocean all around you.
 * I like the ocean! # player # action
 * That seems bad. # player # action
    It's fine, you're a turtle. 
    * * Oh, neat. # player # action
        
- Yeah, this is a turtle story. #left:turtle
-> PrologueSwim

=PrologueSwim
{You gaze, fondly, at the endless water ahead of you. | The ocean extends, beautiful and blue. | A fish swims past! | The coral is lovely. -> Netted}
+ [Swim left]
+ [Swim right]
+ [Swim dead ahead]

- -> PrologueSwim

=Netted
\ 
This is new. There's something ahead of you.
* Seems interesting! Take a closer look. # player # action
    You slowly swim closer and examine the structure ahead of you.
    It looks frayed, fibrous. The pieces form a regular pattern too small for you to slip through.
* Seems worrying. Back away. # player # action
    You turn around, and begin your retreat. But soon enough the regular pattern is in front of you again.
    Wherever you turn, it's on all sides.
- ->Hauled

=Hauled
It's...
A net.

Before you can register the situation, it wraps around you and you are dragged from the water.
* Close your eyes # player # action
    You clamp your eyes shut, perhaps in the desperate hope that this will pass if you let it.
    Your stomach turns as you fly through the air.
* Look down # player # action
    You watch the water retreat below you as you're hauled further and further into the air.
-
With a painful crash, you fall against hard ground.
Through the pain, you try and peer around. Everything is dazzlingly white, and you can hardly see.
Hands clamp around you.
* Hide # player # action
    You instinctively retreat into your shell.
* Lash out # player # action
    You try and bite your captor, but can't reach their hands.
- You are cast into a small box, full of water.
You look up at the square of light from the outside world
* Get out! # player # action
    You try your hardest to swim up to the lip of the box, but before you can make any headway a lid is slipped on.
* I'm trapped... # player # action
    Dejected, you merely watch as the lid is slipped on the box.

- -> PassOut

=PassOut
{!The box is dreafully small}
+ Try and breathe # player # action
{!The pocket of air is hardly large enough for you to get your head clear above water.|The water sloshing in the box makes it hard to stay in any one spot.|The air grows stale.|You barely have the strength to swim up.|You barely have the strength. ->PassedOut}
- ->PassOut

= PassedOut
\ 
After a last attempt, your body betrays you. In the dark of the box, your eyes close.  # passout


-> OctopusFirstVisit

-> END





