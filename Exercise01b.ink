/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. You can see a small amount of light up ahead.
+ [Go Forwards] -> west_cave
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

=== east_tunnel_lit ===
The light of your torch glints off of the thousands of coins in the room.
-> END

== west_cave ==
You are in the west cave. The room is dimly lit with a broken animatronic in the center, its identity unknown. {freddy_fazbear:You now know its Freddy Fazbear!}
* {torch_pickup} [Light Animatronic] -> freddy_fazbear
* [Investigate Animatronic] -> freddy_jumpscare
+ [Go Around] -> west_cave_exit
+ [Go Back] -> west_tunnel
-> END

== freddy_fazbear ==
Flippin Faz-coins, It's Freddy Fazbear! However, he appears to be deactivated.
* [Poke Freddy] -> freddy_jumpscare
+ [Go Back] -> west_cave
-> END

== freddy_jumpscare ==
AHH!!! Freddy chomps down hard.
-> END

== west_cave_exit ==
You see a light at the end of the cave.
* [Go towards it] -> truck_kun
+ [Go Back] -> west_cave
-> END

== truck_kun ==
Holy Flapjacks! A semi-truck's high-beams were on, and it plowed right through you! What was that doing in a cave?
-> END
