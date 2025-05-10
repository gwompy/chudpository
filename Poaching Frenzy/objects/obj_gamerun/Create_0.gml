/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 514C9A31
/// @DnDComment : Object only runs once.$(13_10)Perfect for creating "progess markers"$(13_10)and Chud's starting HP
/// @DnDInput : 6
/// @DnDArgument : "value_4" "100"
/// @DnDArgument : "var" "tutorial"
/// @DnDArgument : "var_1" "meetChudette"
/// @DnDArgument : "var_2" "boarCreated"
/// @DnDArgument : "var_3" "hasFought"
/// @DnDArgument : "var_4" "chudHealth"
/// @DnDArgument : "var_5" "noRide"
global.tutorial = 0;
global.meetChudette = 0;
global.boarCreated = 0;
global.hasFought = 0;
global.chudHealth = 100;
global.noRide = 0;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0FDD8F13
/// @DnDComment : Chud should automatically have these items
/// @DnDArgument : "script" "additem"
/// @DnDArgument : "arg" ""Energy Drink", 10"
/// @DnDSaveInfo : "script" "additem"
script_execute(additem, "Energy Drink", 10);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 18671F84
/// @DnDArgument : "script" "additem"
/// @DnDArgument : "arg" ""Uzi",1"
/// @DnDSaveInfo : "script" "additem"
script_execute(additem, "Uzi",1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 65A42695
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 252DE077
/// @DnDArgument : "code" "/// @description variables to check if enemy is alive$(13_10)global.boarAlive = true;$(13_10)global.wolfAlive = true;$(13_10)global.sheepAlive = true;$(13_10)global.bisonAlive = true;$(13_10)global.dogAlive = true;$(13_10)global.lionAlive = true;$(13_10)global.buffaloAlive = true;$(13_10)global.gazAlive = true;$(13_10)global.scorpionAlive = true;$(13_10)global.rfoxAlive = true;$(13_10)global.peccAlive = true;$(13_10)global.jackAlive = true;$(13_10)global.gatorAlive = true;$(13_10)global.turtleAlive = true;$(13_10)global.nutriaAlive = true;$(13_10)global.fishAlive = true;$(13_10)global.jagAlive = true;$(13_10)global.snakeAlive = true;$(13_10)global.capyAlive = true;$(13_10)global.okapiAlive = true;$(13_10)global.bearAlive = true;$(13_10)global.arcwolfAlive = true;$(13_10)global.reindeerAlive = true;$(13_10)global.sealAlive = true;$(13_10)global.boar1Alive = true;"
/// @description variables to check if enemy is alive
global.boarAlive = true;
global.wolfAlive = true;
global.sheepAlive = true;
global.bisonAlive = true;
global.dogAlive = true;
global.lionAlive = true;
global.buffaloAlive = true;
global.gazAlive = true;
global.scorpionAlive = true;
global.rfoxAlive = true;
global.peccAlive = true;
global.jackAlive = true;
global.gatorAlive = true;
global.turtleAlive = true;
global.nutriaAlive = true;
global.fishAlive = true;
global.jagAlive = true;
global.snakeAlive = true;
global.capyAlive = true;
global.okapiAlive = true;
global.bearAlive = true;
global.arcwolfAlive = true;
global.reindeerAlive = true;
global.sealAlive = true;
global.boar1Alive = true;