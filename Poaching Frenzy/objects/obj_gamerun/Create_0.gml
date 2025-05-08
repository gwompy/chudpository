/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 514C9A31
/// @DnDComment : Object only runs once.$(13_10)Perfect for creating "progess markers"$(13_10)and Chud's starting HP
/// @DnDInput : 5
/// @DnDArgument : "value_4" "100"
/// @DnDArgument : "var" "tutorial"
/// @DnDArgument : "var_1" "meetChudette"
/// @DnDArgument : "var_2" "boarCreated"
/// @DnDArgument : "var_3" "hasFought"
/// @DnDArgument : "var_4" "chudHealth"
global.tutorial = 0;
global.meetChudette = 0;
global.boarCreated = 0;
global.hasFought = 0;
global.chudHealth = 100;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0FDD8F13
/// @DnDComment : Chud should automatically have these items
/// @DnDArgument : "script" "additem"
/// @DnDArgument : "arg" ""Energy Drink", 5"
/// @DnDSaveInfo : "script" "additem"
script_execute(additem, "Energy Drink", 5);

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