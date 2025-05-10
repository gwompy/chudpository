/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02124662
/// @DnDArgument : "code" "// Holds all of the game's dialogue$(13_10)current_line = 0;$(13_10)$(13_10)//tutorial dialogue$(13_10)tutorial_d = [$(13_10)  "Press spacebar to continue dialogue boxes.",$(13_10)  "The spacebar is also used as an interact button",$(13_10)  "Use W,A,S,and D keys to move me. (I'm off screen right now!)",$(13_10)  "If you need to leave for any reason, you can end the game by \n pressing Escape.",$(13_10)  "The game can be saved by pressing Z and loaded by pressing L",$(13_10)  "It is not advised to save and load the game repeatedly.",$(13_10)  "If you need to restart, press the Delete key.",$(13_10)  "On a more positive note, Chudette is waiting for me outside.",$(13_10)];$(13_10)$(13_10)//dialogue for meeting Chudette$(13_10)chudette_d = [$(13_10)	"Hello Chuddy!",$(13_10)	"Good afternoon Chudette. \n You're the flower that blooms on my hearth.",$(13_10)	"You're so sweet. Come, sit down. \n I made us sandwiches.",$(13_10)	"Chudette, there's a beast behind you!",$(13_10)	"Run!!!",$(13_10)	"Agh! Foul creature!",$(13_10)	"Don't worry Chudette, I'll save you! \n Lend me your strength, Elliot.",$(13_10)];$(13_10)$(13_10)postIntro = [$(13_10)	"Chudette, I killed the-",$(13_10)	"Chudette?",$(13_10)	"She looks just like-!",$(13_10)	"NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO!",$(13_10)	"Something happened.",$(13_10)	"I'd better find a new catchphrase.",$(13_10)	"Who will make dinner now? Who will clean?",$(13_10)	"I have had it with these creatures disrespecting me.",$(13_10)	"It is time, It is time for...",$(13_10)	"TOTAL...",$(13_10)	"ANIMAL.....",$(13_10)	"DEATH!!!!!!!! (TAD for short)",$(13_10)	"This begins with the pelt of that boar.",$(13_10)	"There's a computer upstairs. I'll sell it on that site \n /qa/ was talking about.",$(13_10)	"Press Enter while upstairs to access the dark web.",$(13_10)	"What was it called again... Poacher's Haven? Sounds about right.",$(13_10)];$(13_10)$(13_10)noRide_d = [$(13_10)	"I'm not ready to move on, \n there's still animals to kill here",$(13_10)];"
// Holds all of the game's dialogue
current_line = 0;

//tutorial dialogue
tutorial_d = [
  "Press spacebar to continue dialogue boxes.",
  "The spacebar is also used as an interact button",
  "Use W,A,S,and D keys to move me. (I'm off screen right now!)",
  "If you need to leave for any reason, you can end the game by \n pressing Escape.",
  "The game can be saved by pressing Z and loaded by pressing L",
  "It is not advised to save and load the game repeatedly.",
  "If you need to restart, press the Delete key.",
  "On a more positive note, Chudette is waiting for me outside.",
];

//dialogue for meeting Chudette
chudette_d = [
	"Hello Chuddy!",
	"Good afternoon Chudette. \n You're the flower that blooms on my hearth.",
	"You're so sweet. Come, sit down. \n I made us sandwiches.",
	"Chudette, there's a beast behind you!",
	"Run!!!",
	"Agh! Foul creature!",
	"Don't worry Chudette, I'll save you! \n Lend me your strength, Elliot.",
];

postIntro = [
	"Chudette, I killed the-",
	"Chudette?",
	"She looks just like-!",
	"NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO!",
	"Something happened.",
	"I'd better find a new catchphrase.",
	"Who will make dinner now? Who will clean?",
	"I have had it with these creatures disrespecting me.",
	"It is time, It is time for...",
	"TOTAL...",
	"ANIMAL.....",
	"DEATH!!!!!!!! (TAD for short)",
	"This begins with the pelt of that boar.",
	"There's a computer upstairs. I'll sell it on that site \n /qa/ was talking about.",
	"Press Enter while upstairs to access the dark web.",
	"What was it called again... Poacher's Haven? Sounds about right.",
];

noRide_d = [
	"I'm not ready to move on, \n there's still animals to kill here",
];