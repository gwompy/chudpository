/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60ED0743
/// @DnDArgument : "code" "// Check for changes to Chud's health.$(13_10)// Just in case we do something like damaging tiles$(13_10)$(13_10)percent = (global.chudHealth/global.max_health)*100$(13_10)"
// Check for changes to Chud's health.
// Just in case we do something like damaging tiles

percent = (global.chudHealth/global.max_health)*100

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2491261E
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "2"
if(global.stage == 2){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 155DFC99
	/// @DnDParent : 2491261E
	/// @DnDArgument : "value" "125"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 125;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 039AE4F4
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "3"
if(global.stage == 3){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 54BA5A5E
	/// @DnDParent : 039AE4F4
	/// @DnDArgument : "value" "150"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 150;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C5A9269
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "4"
if(global.stage == 4){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 45E73784
	/// @DnDParent : 7C5A9269
	/// @DnDArgument : "value" "175"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 175;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E13A4C6
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "5"
if(global.stage == 5){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1C5AF55A
	/// @DnDParent : 1E13A4C6
	/// @DnDArgument : "value" "200"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 200;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BB2F3E7
/// @DnDArgument : "var" "global.stage"
/// @DnDArgument : "value" "6"
if(global.stage == 6){	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 680FDA97
	/// @DnDParent : 1BB2F3E7
	/// @DnDArgument : "value" "225"
	/// @DnDArgument : "var" "global.max_health"
	global.max_health = 225;}