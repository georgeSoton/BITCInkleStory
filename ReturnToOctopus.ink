
=== return_to_octopus
//TODO add condition on {im}patiently depending on turtle personality
You sit patiently in the quarantine tank, waiting for the octopus to return.
(Time passes, add extra detail here)

Finally, you hear the sound of the octopus sliding open the hatch above your head.
* [Wait]
You wait.
The octopus appears above your little tank, tentacles draped lazily into the water.
"How's it going, <>
* "Hey! I did it!"
"Hang on a sec-" 
The hatch slides back, and the octopus looms over the tiny tank.
"What's going on, <>
-  kiddo?"
//TODO, add condition based on who you managed to convince
* "I did it! I got everyone on board!"
The octopus looks skeptical.
    ** "No really["], I did it, even the mantis shrimp! He's not so scary really."
    His features are hard to read, but you can tell he's surprised.
    ** "So when do we make our great escape?"
* "The main tank is amazing[!"], why didn't you tell me?!"
"Sure, I guess it's got it's own charm..."
He pauses for a moment.
...
"But it's nothing compared to the ocean, I'm sure you're dying to get back. I was just trying to help."
    **"I guess you're right[..."], I'm glad we'll all be escaping soon. I miss the ocean so much."
    **[Talk about the fish you met] "Exactly! Some of those  fish have never even seen the ocean before, can you believe it?! Poor things, I can't wait to show them all how beautiful it is!"
    

- He tilts his head a little to the side as though in deep thought, and then asks, "Are you sure you want to do this?"
* "Escape? Of course I do!"
He rolls his beady eyes at you. "Of course you want to escape, I mean do you want to escape like this? <>
* "What do you mean?"
"<>
- This plan of yours to free the whole tank, it's brave, you've got heart...but it's risky, my friend. I'd hate to see you get hurt."
* "How risky?"
    "Rather, little one. And the large tank really isn't so bad, you're not letting anyone down if you just want to go...nobody would blame you." he says softly.
    You stop and think for a moment. Is the aquarium so bad? Aren't they happy over there, it's their home...right? And you miss the ocean so deeply, like a physical ache. You realise it has a name, you're homesick.
    ** "I just want to go home."
        "Of course you do, it's okay. The whole ocean is out there waiting for you, it's your home. And this is their home. That's just how it is."
        *** [Agree]
            They seem happy enough here, and if the plan fails then some of them might not make it...
            "Let's go" you tell the octopus.
            "As you wish" he replies, and guides you out of your tank and towards your escape.
            ->DONE
        *** [Disagree]
            "This isn't home, this is a cage!" you cry out. As homesick as you may feel, you know that all sea creatures have a longing for the ocean, you don't want to leave them behind.
            -> hard_sell
    ** "I can't just leave them trapped here."
    -> hard_sell
    
* "I don't care, I'm going to save my friends!"
->hard_sell


=hard_sell
He sighs, and starts to play the the gravel at the bottom of your tank absent-mindedly.
  Oh, little one, if any stage of this little escape goes wrong we'll all be goners. I didn't tell you this before because I didn't want to scare you, but...well I've been here a long time, and I've seen a lot of people come and go."
    * ...
"Let's just say, you're not the first to try to escape, and I'd hate for things to end up as...messily...as they have done before..."
** ["Messily?"] "M-messily? W-w-what do you mean?"
You feel a cold chill as the weight of his words settle on you.
** ...
- "It's tragic really, I try not to think about it, but I'll never be able to forget their little faces, suffocating on the dry aquarium floor. There's so much that could go wrong."
* ...
- "You could kill them, you know?"
* [Leave without them]
    "You're right..." you tell the octopus, "They're better off here, in the aquarium, and I'm better off out there."
    The octopus nods along with you.
    "Of course, if that's what you want" he says, guiding you out of the tank towards your escape.
    ->DONE
* [Escape together]
    "No!" the thought of leaving them all behind in this prison scares you more than the alternative. They're your friends!
    The octopus stares you down, is he...angry?
    **...
    "You're risking it all over a few pesky fish?!"
    He spits venomously, leering further into your tank. He sees a flash of fear across your face and instantly withdraws, and sighs.
    "I'm sorry, kiddo, I'm just scared for you. I only want what's best for you."
    *** "Maybe you're right[."], you've been around so much longer than I have, if you think it's too risky you're probably right...let's go."
    "If that's what you want, little one, then let's go" he says softly, and guides you out of your tank towards your escape.
    ->DONE
    *** "It will be okay[."], I promise I'll be careful. I know you're scared for me, but I have to do this. I have to save them.
    The octopus looks at you for a moment. He looks defeated.
    "Well, if you insist, then I'll do whatever I can to help you. You don't have to do this alone."
->DONE
    