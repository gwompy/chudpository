/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E9A26DA
/// @DnDComment : This statement holds the HP$(13_10)of all creatures. Furred, scaled,$(13_10)feathered, big, small.
/// @DnDInput : 24
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "expr_1" "100"
/// @DnDArgument : "expr_2" "100"
/// @DnDArgument : "expr_3" "100"
/// @DnDArgument : "expr_4" "70"
/// @DnDArgument : "expr_5" "150"
/// @DnDArgument : "expr_6" "120"
/// @DnDArgument : "expr_7" "30"
/// @DnDArgument : "expr_8" "25"
/// @DnDArgument : "expr_9" "40"
/// @DnDArgument : "expr_10" "70"
/// @DnDArgument : "expr_11" "15"
/// @DnDArgument : "expr_12" "200"
/// @DnDArgument : "expr_13" "150"
/// @DnDArgument : "expr_14" "20"
/// @DnDArgument : "expr_15" "10"
/// @DnDArgument : "expr_16" "180"
/// @DnDArgument : "expr_17" "200"
/// @DnDArgument : "expr_18" "50"
/// @DnDArgument : "expr_19" "60"
/// @DnDArgument : "expr_20" "300"
/// @DnDArgument : "expr_21" "90"
/// @DnDArgument : "expr_22" "120"
/// @DnDArgument : "expr_23" "70"
/// @DnDArgument : "var" "boarHealth"
/// @DnDArgument : "var_1" "wolfHealth"
/// @DnDArgument : "var_2" "sheepHealth"
/// @DnDArgument : "var_3" "bisonHealth"
/// @DnDArgument : "var_4" "dogHealth"
/// @DnDArgument : "var_5" "lionHealth"
/// @DnDArgument : "var_6" "buffaloHealth"
/// @DnDArgument : "var_7" "gazHealth"
/// @DnDArgument : "var_8" "scorpionHealth"
/// @DnDArgument : "var_9" "rfoxHealth"
/// @DnDArgument : "var_10" "peccHealth"
/// @DnDArgument : "var_11" "jackHealth"
/// @DnDArgument : "var_12" "gatorHealth"
/// @DnDArgument : "var_13" "turtleHealth"
/// @DnDArgument : "var_14" "nutriaHealth"
/// @DnDArgument : "var_15" "fishHealth"
/// @DnDArgument : "var_16" "jagHealth"
/// @DnDArgument : "var_17" "snakeHealth"
/// @DnDArgument : "var_18" "capyHealth"
/// @DnDArgument : "var_19" "okapiHealth"
/// @DnDArgument : "var_20" "bearHealth"
/// @DnDArgument : "var_21" "arcwolfHealth"
/// @DnDArgument : "var_22" "reindeerHealth"
/// @DnDArgument : "var_23" "sealHealth"
boarHealth = 100;
wolfHealth = 100;
sheepHealth = 100;
bisonHealth = 100;
dogHealth = 70;
lionHealth = 150;
buffaloHealth = 120;
gazHealth = 30;
scorpionHealth = 25;
rfoxHealth = 40;
peccHealth = 70;
jackHealth = 15;
gatorHealth = 200;
turtleHealth = 150;
nutriaHealth = 20;
fishHealth = 10;
jagHealth = 180;
snakeHealth = 200;
capyHealth = 50;
okapiHealth = 60;
bearHealth = 300;
arcwolfHealth = 90;
reindeerHealth = 120;
sealHealth = 70;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BA6AC88
/// @DnDComment : this block handles vars$(13_10)needed for functionality
/// @DnDArgument : "var" "newAttack"
newAttack = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B9311A9
/// @DnDComment : enemHealth is used during programming to$(13_10)determine which animal's health to display$(13_10)and modify.
/// @DnDArgument : "code" "//Idea provided by AI$(13_10)$(13_10)// Get the current room's name$(13_10)// without unnecessary text$(13_10)room_name = room_get_name(room);$(13_10)$(13_10)// Split the name to extract the animal identifier (e.g., "boar")$(13_10)animal_parts = string_split(room_name, "_");$(13_10)animal = animal_parts[1]; // Second part after splitting by "_"$(13_10)$(13_10)// Construct the health variable name (e.g., "boarHealth")$(13_10)enemHealth = variable_instance_get(obj_battle_interface, animal + "Health");$(13_10)"
//Idea provided by AI

// Get the current room's name
// without unnecessary text
room_name = room_get_name(room);

// Split the name to extract the animal identifier (e.g., "boar")
animal_parts = string_split(room_name, "_");
animal = animal_parts[1]; // Second part after splitting by "_"

// Construct the health variable name (e.g., "boarHealth")
enemHealth = variable_instance_get(obj_battle_interface, animal + "Health");

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 256D3F70
/// @DnDComment : for making the damage bounce
/// @DnDArgument : "code" "//Idea by AI$(13_10)$(13_10)// Path progress (0 = start, 1 = end)$(13_10)meleeDamage_pathProgress = 0;$(13_10)$(13_10)// Speed of movement along the path$(13_10)// smooth movement hopefully$(13_10)meleeDamage_pathSpeed = 1000 / (path_get_length(p_dmg) * room_speed);$(13_10)$(13_10)// Store the current X/Y for drawing$(13_10)meleeDamage_drawX = 0;$(13_10)meleeDamage_drawY = 0;"
//Idea by AI

// Path progress (0 = start, 1 = end)
meleeDamage_pathProgress = 0;

// Speed of movement along the path
// smooth movement hopefully
meleeDamage_pathSpeed = 1000 / (path_get_length(p_dmg) * room_speed);

// Store the current X/Y for drawing
meleeDamage_drawX = 0;
meleeDamage_drawY = 0;