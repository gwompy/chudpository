/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 54466947
/// @DnDInput : 2
/// @DnDArgument : "value" "100"
/// @DnDArgument : "value_1" "1"
/// @DnDArgument : "var" "max_health"
/// @DnDArgument : "var_1" "stage"
global.max_health = 100;
global.stage = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77C3B393
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "2"
if(global.stage == 2){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 01D4B9CE
	/// @DnDParent : 77C3B393
	/// @DnDArgument : "value" "125"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 125;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DCE8F13
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "3"
if(global.stage == 3){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 68791376
	/// @DnDParent : 0DCE8F13
	/// @DnDArgument : "value" "150"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 150;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A0EB712
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "4"
if(global.stage == 4){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6FC62946
	/// @DnDParent : 7A0EB712
	/// @DnDArgument : "value" "175"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 175;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D19CA55
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "5"
if(global.stage == 5){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 221DC537
	/// @DnDParent : 1D19CA55
	/// @DnDArgument : "value" "200"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 200;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D092AD7
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "6"
if(global.stage == 6){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0C5FD910
	/// @DnDParent : 7D092AD7
	/// @DnDArgument : "value" "225"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 225;}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36326C6B
/// @DnDArgument : "code" "//converts the health to a percent when the max health is above 100$(13_10)percent = (global.chudHealth/global.max_health)*100"
//converts the health to a percent when the max health is above 100
percent = (global.chudHealth/global.max_health)*100