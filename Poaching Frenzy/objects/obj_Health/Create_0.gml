/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0313AC17
/// @DnDInput : 2
/// @DnDArgument : "value" "100"
/// @DnDArgument : "value_1" "1"
/// @DnDArgument : "var" "max_health"
/// @DnDArgument : "var_1" "stage"
global.max_health = 100;
global.stage = 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36326C6B
/// @DnDArgument : "code" "//converts the health to a percent when the max health is above 100$(13_10)percent = (global.chudHealth/global.max_health)*100"
//converts the health to a percent when the max health is above 100
percent = (global.chudHealth/global.max_health)*100