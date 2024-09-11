/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR health = 3
VAR weapon = ""
VAR bandit = true
VAR time = 0 // story starts in early morning
VAR names = 0

-> keep_entrance

== keep_entrance ==
You feel the bracing wind and dusty flurries gnaw at you as you make your way up the main thoroughfare of Krissenthal, towards Count Vedillan's keep. As you ascend the staircase to the veritable fortress, you hear the supports creak against the winds, barely holding up the cobbled battlements of stone and spruce. Vestiges of this city's role and plight amidst the Amalgamere War. Once you finally reach the gates, a guard speaks up. 
"State your business."
* ["The Count called for me. I know not what for."] -> meek_entrance
* ["Best skip the formalities. You should know Vedillan's expecting me."] -> aggro_entrance
-> END

== meek_entrance ==
The guards take a look at one another. "Very well," the other says. "But you'll need an escort."
The gates rumble open as another guard is called to oversee you enter Count Vedillan's main hall. You are escorted into a dimly lit mead hall with empty, dusty settings lining the long wooden table. A massive curtain obscures a great window looking out over the city's palisade and into the surrounding forest. The guard moves to one of many doors on one side of the room and knocks, announcing your arrival. Shortly after, Count Vedillan, who seems smaller in stature than you might expect of a war hero, emerges. 
-> exposition
-> END

== aggro_entrance ==
"Alright, alright," they say. "No need to get testy, you can never be too careful. Count'll deal with you if you're lying."
The gates rumble open as the other guard give you directions to the main hall of the keep, where the Count can be found. You soon wander into a dimly lit mead hall with empty, dusty settings lining the long wooden table. A massive curtain obscures a great window looking out over the city's palisade and into the surrounding forest. Vedillan isn't here to greet you, and being left unattended, you see a simple, yet sturdy looking knife stuck into the table.
* Pocket it. No one's using it anyways. -> knife
* Leave it. You don't want to get in trouble for this sort of thing. -> exposition
-> END

== knife ==
~ weapon = "Vedillan's knife"
You wrest the knife from it's mahogany hold, and stash it away mere moments before a door opens, and Count Vedillan, who looks smaller in stature than you'd expect from a war hero, enters. 
-> exposition
-> END

== exposition ==
{knife:"I thought I'd heard something.}{not knife && aggro_entrance: You keep your hands to yourself and wait patiently. A few minutes later, a door opens, and Count Vedillan, who looks smaller in stature than you'd expect from a war hero, enters. "}You're earlier than expected. I appreciate the expediency, and I apologize for the secrecy. I'll cut to the chase. I need you to run an errand for me out into the Krissenfrost Wood, to the ruined city of Cenngwith. An old family heirloom has been left there, and I'm no longer in any shape to make the expedition."
*["I accept this charge. But I'm afraid this work doesn't come free."] -> request
*["I'll need some incentive to do your dirty work old man."] -> demand
-> END

== request ==
{knife: "I should think that knife will serve you well. Consider that, as well as my allowance of your sticky fingers, an advance on your payment." -> outside|"Of course, I wouldn't expect otherwise. I know you've ventured out there before, but this upfront reward should ease your way." Vedillan approaches three stands with different items on each.}
+ {not knife} ["The Aethermaul. A hammer made of aetherium, a substance known for chanelling movement and force."] -> aethermaul
+ {not knife} ["Chaosbinder. A bow siffused with unstable arcana, that may lash out at you, but it's pandemonium will wreak greater havok on your foes."] -> chaosbinder
+ {not knife} ["And the Helm of Jareth, which silvers your tongue, and perfects your pitch. The beasts beyond the palisade are cunning, but this might help match their wit."] -> helm
-> END

== demand ==
Count Vedillan's nostrils flare, as his deep, sombre eyes darken further still. 
{knife: "Thrice you have disrespected me. You disrespect the servants of my house, that which belongs to me, and now, you all but spit in my eye. I'm afraid I cannot, will not stand for this." -> prison_ending }
"I did have some items to help guide your path. I will ignore this disrespect and still provide one as upfront compensation, but the ice you stand on wears thin."
Vedillan approaches three stands with different items on each. He ignores one on the end.
"I'm afraid you are unfit for this artifact."
+ ["The Aethermaul. A hammer made of aetherium, a substance known for chanelling movement and force."] -> aethermaul
+ ["Chaosbinder. A bow siffused with unstable arcana, that may lash out at you, but it's pandemonium will wreak greater havok on your foes."] -> chaosbinder
-> END

== aethermaul ==
~ weapon = "Aethermaul"
You pick up the Aethermaul. You're barely able to lift the dark metallic arm at first, but as you manuveur it, you feel an almost magnetic attraction guiding your hand. -> outside
-> END

== chaosbinder ==
~ weapon = "Chaosbinder"
You pick up Chaosbinder. You feel the static energy emanating from the multiple cracked arms, with ephermal, multicolor glows pulsating within it. Despite the wear and unevenness, there is elegance in it's flaws. -> outside
-> END

== helm ==
~ weapon = "Helm of Jareth"
You don the Helm of Jareth. The maplewood crown nestles nicely over your brow, and within the silver framing of the helmet, you hear a symphony around you. Every creak of wood, every shift of a foot, every whistle of wind, comes together to compose a beautiful song. -> outside
-> END

== outside ==
{not wood_entrance: 
You {knife: sheepishly } thank the Count, but before you leave, he leaves you one final guidance.
"My mother's journal, from when she still served as Baroness of Cenngwith. This will help you find your way there, and to identify the object I desire."
With that you leave the keep, to brave not just the oppressive winter winds, but the threats that lie in the Krissenfrost Wood. While making your way to the palisade surround the city, to descend the hill it stands atop, you hear grunts of pain down a nearby alleyway.
}
{wood_entrance: The cries still ring out from the alley.}
+ Investigate. Someone could be hurt. -> alley
+ Keep walking. You've got bigger things on your plate. -> wood_entrance
-> END

== prison_ending ==
Several guards are revealed in and around the great mead hall, and your arms are seized. Despite your struggles, protests, and apologies, you are dragged away without another word, and thrown into the dungeon of Count Vedillan's keep, where you will remain for an indefinite sentence.
-> END

== alley ==
{not fight && not run && not reason2:
{weapon} at the ready, you slowly creep towards the source of distress. The utterances cease, and you whip your head around to observe your surroundings. Out of the corner of your eye, under the thin dusting of snow, you catch a patch of discoloration. Where the cold hard dirt should be, there is instead a crimson coating of blood. 
} {not fight && not run && not reason2:
You whip your head around in alarm, and are thrown off by the presence of another person approaching behind you. You're thrown off just enought you stumble backwards, narrowly missing a concealed blade coming in contact with your neck. You draw {helm: your old hatchet| {weapon}} and prepare for a fight. 
}
+ Take a swing. This brigand doesn't know who they're challenging. -> fight
+ Make a run for it. You don't want to hurt yourself on such an important job. -> run
* {helm} Stake your claim. Surely they can see reason and leave you be. -> reason1
+ {not helm} Stake your claim. Surely they can see reason and leave you be. -> reason2
-> END

== fight ==
{aethermaul:
~ bandit = false
The Aethermaul makes quick work of the blackguard. It feels as though you're swinging a stick around like a child playing pretend, but you jerk back to reality when it comes in impact, sending a painful jolt up your arm. Once you recover, the bandit lies on the ground, teeth scattered over the white snow, only outlined by the fresh blood, and neck past the point of no return.
You search the body for any evidence of who this stranger could be, or what they wanted. All you find is a handful of coins, and a letter describing the Count's dilemma, addressed to one "Nik". 
It didn't have to be like this. Next time, you won't be so quick to act, but for now, all you can do is move on.
Health: {health}
-> wood_entrance
}
{knife:
~ bandit = false
~ health --
You brought a knife to a swordfight, but you scrape by. The altercation is brief, or at least it felt that way through all the adrenaline. By the time you're back in your own senses, the bandit is on the ground, a deep, wide laceration across the abdomen.You search the body for any evidence of who this stranger could be, or what they wanted. All you find is a handful of coins, and a letter describing the Count's dilemma, addressed to one "Nik". 
It didn't have to be like this. Next time, you won't be so quick to act, but for now, all you can do is move on.
Health: {health}
-> wood_entrance
}
{run && chaosbinder:
~ bandit = false
Having gained some distance and safety, you slowly draw and knock back an arrow. With a defeaning crack, and flash of light, it is released, and embeds deep within your attacker's chest with enough force to send them several feet backwards, unable to get up from a pool of their own blood.
You search the body for any evidence of who this stranger could be, or what they wanted. All you find is a handful of coins, and a letter describing the Count's dilemma, addressed to one "Nik". 
It didn't have to be like this. Next time, you won't be so quick to act, but for now, all you can do is move on.
Health: {health}
-> wood_entrance
}
You try to attack, but your {helm: old, worn hatchet| bow and arrows} can't hold their own against your attacker's much nicer looking sword.
~ health --
Health: {health}
{health == 0: -> death}
-> alley
-> END

== run ==
{chaosbinder:
You turn around and start to run. The bandit takes advantage of your back being turned, and is just that much quicker. But right as their sword would have cut you down, a burst of color shoots of the cracks of Chaosbinder. 
When your vision returns you see that blackguard on his knees, still shaking off the asssault, and you are a few feet further away. Your hands and wrist burn, but there's an oppurtunity.
-> alley
}
You turn around and start to run. The bandit takes advantage of your back being turned, and is just that much quicker.You feel pain shooting throughout your body as your back is sliced open, and everything seems to move in slow motion as your adrenaline surges you forward before it can cut too deeply.
This burst of energy is too difficult to control, and you trip over yourself but manage to stay on your feet. Still, your attacker is able to use this to catch up, and you're right back where you were, with one more cut than before.
~ health --
Health: {health}
{health == 0: -> death}
-> alley
-> END

== reason1 ==
The figure raises their sword and begins to rush you. You stand your ground, and call out to them.
"Enough. Who are you who thinks you have any business attacking me. I'm on official business of Count Vedillan, and he is not the kind of man with which you want any quarry. Move along or I cannot guarantee your safety."
Your voice resonates within the silver helm enclosing your head, and projects itself in a booming, steely manner. The bandit stops dead in his tracks, lowers his sword, and removes his face covering.
"I was told this was quick easy money. Take the job, get in with the Count, take the reward. But if this is the one being sent to do his business, I'm afraid I'm out of my depth on this one."
+ ["I'd recommend making yourself scarce, and finding yourself another occupation. Not everyone will be as understanding as me."] -> spare
+ ["I'm afraid you are. Consider this your retirement."] -> kill
-> END

== reason2 ==
{reason2 > 1:
"I've just met with the man, so believe me when I say this won't go in your favor." The bandit stops dead in his tracks, lowers his sword, and removes his face covering.
"I was told this'd be quick easy money. But I suppose he's fought in a war, and King Eaven stabbed him in the back once. Don't need to give him someone else to take it out on. I'm afraid I'm in over my head here."
}
{reason2 ==1: 
"I'm on a contract from Count Vedillan himself. Hurt me and you'll be making an enemy in a very high place."
"I know all about your little chore. Hand over what he gave you and I'll take care of it." He flicks his sword, leaving a gash in your thigh. "Next time I'll go a bit deeper."
~ health --
}
Health: {health}
{health == 0: -> death}
{reason2 == 1: -> alley}
+ {reason2 > 1}["I'd recommend making yourself scarce, and finding yourself another occupation. Not everyone will be as understanding as me."] -> spare
+ {reason2 > 1} ["I'm afraid you are. Consider this your retirement."] -> kill
-> END

== spare ==
"It ain't that easy, but I appreciate the thought. I'm meant to be moving along anyways. You ever find yourself in Gorlaed and doing business with the Ydallmyr, ask for Nik."
Nik wanders off, and you take a moment to catch your breath. That could have been worse. Much worse. And now you have a new name to carry with you on your path forward.
~ bandit = false
Health: {health}
->wood_entrance
-> END

== kill ==
You raise your old, chipped hatchet above your head, and it leaves your fingertips with all the force in your body. Your attacker tries to defend himself but the axe head embeds deep into his clavicle, redirecting his blocking blade into him as well. He falls back, unmoving.
You search the body for any evidence of who this stranger could be, or what they wanted. All you find is a handful of coins, and a letter describing the Count's dilemma, addressed to one "Nik". 
It didn't have to be like this. You could have asked more questions. You could have controlled your rage. You could have come up with a cooler one-liner. But for now, all you can do is move on.
~bandit = false
Health = {health}
->wood_entrance
-> END

== death ==
You've sustained your last blow. Your chest struggles to rise and fall like normal. You're tired, but there's more to do. You'll feel better once you catch your breath. But gods are you tired, and your legs don't want to carry you further. So your breath runs off, with everything you had left to say. All that's left is to close your eyes, talk to the King of Dreams, and his sister, Death Herself.
-> END

== wood_entrance ==
   You keep on forward, eventually reaching the treeline at the foot of the hill, armed, and ready for what happens next.
   {not bandit:
   ~ names ++
   The barren, gnarled mass of trees and branches looms before you. The pathways that once were well-trodden has fallen into disuse, and is covered by a fresh blanket of snow. How will you proceed?
   * Try to ascertain your position. You have a specific destination that demands haste. -> journal
   * Just start walking. You've been here before, as long as you know the general direction you'll find something worth finding. -> explore
   -> END
   }
   + {bandit} Your conscious gets the better of you. Go back to the alley. -> outside
-> END

== journal ==
{advance_time()}
    Using the Baroness' journalings, you have a rough guide in these woods. While trudging through the rising snow piles, head down buried in the journal, you notice a disurbance in the perfect white sheet below. One you don't believe was you. It looks to be bootprints, and large ones at that, veering off in another direction. 
    + Follow them. Another traveller could have something to offer. -> prints
    + Keep walking. No one else could be in these conditions, you must've gotten distracted and made a circle<>-> keep_walking
-> END

== explore ==
{advance_time()}
    Your gut's never failed you before. Intuition as you guide, you forge your own path, just as you've always done. While you are appropriately dressed for this kind of environment, nothing is stopping your entire face from feeling numb, and yet amidst this, your nose tingles. As your struggle to get a hold of your senses, you think you smell smoke. Looking around it doesn't take you long to find a small hut with a thatched roof, and smoke from a wood-burning stove emanating from a chimney.
    {prints: It isn't difficult to follow the trail of black, foul smelling goop, and soon enough you find yourself standing before a small hut with a thatched roof, and smoke from a wood-burning stove emanating from a chimney.}
    + Try knocking. The tenant could be perfectly agreeable and friendly. If not, well, you did invite yourself. -> cabin
    + Leave it be. Nothing in these woods is to be trusted<>-> keep_walking
-> END

== cabin ==
{advance_time()}
    
-> END

== prints ==
{advance_time()}
    You set off for wherever this mystery person's trail leads. You move as quickly as you can, as the tracks don't seem fresh and the snowfall quickly becoming a full-blown blizzard. The further you go, the more defined the prints become. It looks as if this figure is wearing a suit of armor, or at leave grieves given the shape, and the fact that you're now outpacing them.
    Eventually, you manage to catch up to the source of the tracks. Back towards you, leaned up against a tree, you can make out weathered plate armor under a tattered traveller's cloak and hood. A closer look reveals that it was no trick of perspective, they are in fact twice the size even the most domineering human. It sounds as if they're muttering something to themself.
    * Take them out quietly. Madness is common to travellers of Krissenfrost, best to put them out of their misery<>-> sneak
    * Call out. They could need help, and maybe offer some in return<>-> call
-> END

== sneak ==
VAR steps = -1
~steps++
. 
{steps > 2: 
    Still facing away, the stranger does not hear your approach. You ready your weapon, but in the second before you strike, the armored-clad figure hears your shifting and turns to look at you. There is ferosity in their eyes. Bloodlust. But also a primal fear in which they are borne. -> down
}
{chaosbinder: You raise your bow and knock back an arrow. Slowly taking, aim, you fire. The arrow thuds in their back, through the cold, brittle metal plating, and the body falls with a clang<>-> keep_walking}
You slowly take a step towards them.
{~Your foot steadily plants into the snow, which was obsuring a dead branch beneath it. It snaps, and their head jerks towards you<>-> seen| You silently plant your foot in the snow<>-> sneak| You silently plant your foot into the snow<>-> sneak| You silently plant your foot in the snow<>-> sneak| You silently plant your foot into the snow<>-> sneak}
-> END

== call ==
.
{advance_time()}
    "Excuse me! I-is everything alright?" you shout. The large head turns to look at you, a look of ferocity in these animalistic eyes, attached to a face of dark silver scales, and a draconic maw. What you now recognize to be a drakefolk turns to you.
    "Are you one of them?" she growls.
    "One of what?"
    "Don't play dumb with me! I've met two-faced backstabbers at every turn, you're no different."
    "Look," you slowly place your weapon on the ground and raise your hands. "I'm here to help. But you need to tell me what's wrong. How about you start with your name?"
    The drakekin huffs and snorts. "Stone Face."
    "Alright Stone Face, who are these people you speak of?"
    "Not people, things, his pets. They burrow into you, he likes to take us like collectibles. One of them got me, and it means to take me to where he can display me."
    "Maybe I can get it out for you."
    "How"
    * [I have a very steady hand, I'll try to cut it out.] -> surgery
    * [Maybe if I knock you out, it'll get scared and leave. Parasites don't stick with dead hosts.] -> knock
    * [I read a book on wizardy once, I bet I could banish it.] -> banish
    * [I'll coax it out. Even animals can recognize a sweet voice.] -> coax
-> END

== surgery ==
    {knife: 
    ~names +=2
        You show Stone Face Vedillan's knife. She seems hesitant but given her other options, nods. 
        "I felt it seep in here," she says, turning around and tapping her left shoulder blade. You move the cloak aside, remove pieces of the plate armor, and begin to make an incision. A black liquid begins to ooze out, and the further you go, the more violently this liquid reacts. You continue to drag the blade, and even made the cut deeper, before Stone Face roars, and says,
        "Bury the blade!"
        You do as she says and she roars again, as more of the liquid is forced from her back, until a creature is formed from her maligned blood that slithers from her body. With a single beat of her massive wings which throws you back a few paces, her possessor is fully forced out, as it writhes away across the driven snow.
        "Jawrick," Stone Face says, panting.
        "What?" you respond as you stand up.
        "My true name is Sullia Jawrick. Let that be of some help to you."
        She beats her wings once more, and when you look again, is gone. All that's left is black much trailing off in another direction. You suppose a name is nice, but you could've done with something like magical armor too.
    }
    {not knife:
    ~names++
        You show Stone Face {helm: your old hatchet| {weapon}}. She growls.
        "Surgery with that? You do mean to kill me!"
        Before you can get another word out, she unfurls her wings, and takes off into the sky.
    }
        * {knife} Follow the monster. Whatever this thing is should be dealt with before it does more damage. -> cabin
        * Return to your path. This detour took long enough -> keep_walking
    
-> END

== knock ==
{aethermaul:
    ~names+=2
    You hold up The Aethermaul. She seems hesitant, but given her other options, nods. You bring the face of the hammer close to her head, the light magnetic force tugging towards her skull. You draw it back just slightly, and strike. The kinetic pull of aetherium, which normally enhances the power of your strikes, offers more control, as if lightly thuds into her head, and she crumples unconscious.
    As she lays on the ground, Stone Face start to convulse. Her pupils take over the whole of her reptilian eyes and every orifice begins to ooze that same black liquid, until it eventually conglomerates and slithers away. The drakefolk coughs and sits up.
    "Jawrick," Stone Face says, rubbing her head and standing back up.
    "What?"
    "My true name is Sullia Jawrick. Let that be of some help to you."
    She beats her wings once more, and when you look again, is gone. All that's left is black much trailing off in another direction. You suppose a name is nice, but you could've done with something like magical armor too.
}
{not aethermaul:
~names++
        You show Stone Face {helm: your old hatchet| {weapon}}. She growls.
        "Knock me out with that? You do mean to kill me!"
        Before you can get another word out, she unfurls her wings, and takes off into the sky.
}
    * {aethermaul} Follow the monster. Whatever this thing is should be dealt with before it does more damage. -> cabin
    * Return to your path. This detour took long enough -> keep_walking
-> END

== banish ==
{chaosbinder:
~names+=2
    You show the unstable arcana chanelled within Chaosbinder. She seems hesitant, but given her other options, nods. You knock back a blunt arrowhead, and take aim, trying to control the spontaneous energy of your bow. With a deep breath you release. The bowstring snaps with a multi-colored flash, your hands feel a burning sensation, and you are pushed back. For a moment it seems to have failed, but the spot where it impacted Stone Face glows white, her mouth opens, and her head shoots back. A black ooze flies from her mouth, taking the shape of a serpentine creature, before it slithers away.
    "Jawrick," Stone Face says, panting.
    "What?" you respond as you stand up.
    "My true name is Sullia Jawrick. Let that be of some help to you."
    She beats her wings once more, and when you look again, is gone. All that's left is black much trailing off in another direction. You suppose a name is nice, but you could've done with something like magical armor too.
}
{not chaosbinder:
~names++
     You show Stone Face {helm: your old hatchet| {weapon}}. She growls.
    "Banish it with that? You do mean to kill me!"
    Before you can get another word out, she unfurls her wings, and takes off into the sky.
}
    * {chaosbinder} Follow the monster. Whatever this thing is should be dealt with before it does more damage. -> cabin
    * Return to your path. This detour took long enough -> keep_walking
-> END

== coax ==
{helm:
~names+=2
    You tap the Helm of Jareth, and before Stone Face can express her concern or confusion, you allow your voice to fill the space around you, which before only held empty, silent cold. Something, perhaps even someone else takes over, and you utter a string of phrases in a tongue you've could never recognize. Stone Face, still perplexed, suddenly lurches over, grasping her stomach. With a roar, a profuse stream of dark, brackish spews from her mouth. Stone Face collapses, and the ooze congomerates into a singular form, and slithers away.
    "Jawrick," Stone Face says, panting, rising to her feet from fetal position.
    "What?"
    "My true name is Sullia Jawrick. Let that be of some help to you."
    She beats her wings once more, and when you look again, is gone. All that's left is black much trailing off in another direction. You suppose a name is nice, but you could've done with something like magical armor too.
}
{not helm:
~names++
    You show Stone Face {helm: your old hatchet| {weapon}}. She growls.
    "Convince this thing? With that? You do mean to kill me!"
    Before you can get another word out, she unfurls her wings, and takes off into the sky.
}
    * {helm} Follow the monster. Whatever this thing is should be dealt with before it does more damage. -> cabin
    * Return to your path. This detour took long enough -> keep_walking
-> END

== seen ==
.
{advance_time()}
    You look into wild, ferocious reptilian eyes, attached to a face of dark silver scales, and a draconic maw. What you now recognize to be a drakefolk turns to you.
    "You're one of them," she growls.
    "One of what?"
    "You mean to kill me."
    "Wait-"
    "You will not take me!"
    You prepare yourself for a fight, but the drakekin unfurls two great wings, and with wind whipping all around you, takes off with a thudding impact against the ground you stand on.
    * Return to your path. This detour took long enough -> keep_walking
-> END

== down ==
* Knock them out. Maybe they can be helped. -> spare2
* There's no coming back from this. Best to put them down. -> kill2
-> END

== spare2 ==
    You manage to redirect the trajectory of your blow, instead striking with the hilt of {not helm: weapon| your axe}. The strike lands directly in the side of their temple, and they collapse immediately after. As they lay on the ground, they start to convulse. You now see a face of dark silver scales and an elongated maw that spits a brackish liquid at you. Their pupils take over the whole of their reptilian eyes and every orifice begins to ooze that same black liquid, until it eventually conglomerates and slithers away. The drakefolk coughs and sits up.
    "Nasty creep. Left me with nothing but a headache and this gunk," she says, spitting more of the viscous liquid and holding a clawed hand to her forehead. "I suppose thanks are in order, as much as if pains me to say it. I don't talk to much of anyone anymore but when I did they called me Stone Face."
    "Seeing as I did just save you from a fate worse than death I think I deserve more than a moniker, Stone Face." She sneers, snoorts, and spits again.
    "Sullia Jawrick. Like I said, no one around to call me that anymore, I don't intend on changing that."
    "Very well," you say. "Where will you be taking yourself and that name then?"
    "These trees connections to beings greater than you and I. Let them inform you, I think I've shown my gratitude enough to keep you out of my business. Thanks again stranger."
    And with that Jawrick, Stone Face, spits once more, and unfurls two great wings beneath the cloak, and takes off. You focus on the spot where she last spit and see the same liquid from that thing, if you can even call it that, leading in another direction.
    ~ names += 2
    * Follow it. Whatever this thing is should be dealt with before it does more damage. -> cabin
    * Return to your path. This detour took long enough -> keep_walking
->END

== kill2 ==
    {not aethermaul: You plant your blade into the stranger, who you now see bears dark, silvery scales. They put of more resistance than skin, but still it buries deep. The drakekin cries out in pain, but you drag the blade even further, spilling dark, brackish blood across the driven snow, and soon enough the wails silence, and they fall.|What you see now to be skin of dark silvery scales puts up little resistance to your hammer, as all but shatters the drakekin with a resounding clang and green flash.} 
    You stand, taking a moment to admire the feat of bringing down a creature of this size, but after only a few seconds, the body starts writhing. The blood that was still slowly pooling around her began to spew every which way, until you realize it was not blood at all, but a living ooze that forms into one shape and slithers off, leaving a trail of its own much behind it.
    * Follow it. Whatever this thing is should be dealt with before it does more damage. -> cabin
    * Return to your path. This detour took long enough -> keep_walking
-> END

== keep_walking ==
.
{advance_time()}
    You put all of that out of your mind and remain focused on your task.
-> END

== function advance_time ==
~ time ++

{
- time > 5:
    time = 0
}
{
- time == 0:
    ~ return "The sun begins to rise. It is the dawn of a new day."
- time == 1:
    ~ return "The sun continues to climb the greying expanse above, offering some respite from the biting cold."
- time == 2:
    ~ return "The sun reaches it's apex. Even with all the light flooding the snow-covered forest, you feel as if you are too far to feel it's warmth."
- time == 3:
    ~ return "Hues of roses and clementines paint the skyline. The wind picks up slightly, as if it's running from something."
- time == 4:
    ~ return "The soft claws of darkness take hold around you. It's almost peaceful. Were that it stayed as such."
- time == 5:
    ~ return "The woods are hollow, the only voice that dares speak is that of the moon, Divining Torch of the Night."
}
~ return time