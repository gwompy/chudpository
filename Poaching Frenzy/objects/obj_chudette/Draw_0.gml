/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 647A4BFD
/// @DnDArgument : "var" "global.hasFought"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(global.hasFought < 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 6566ECC0
	/// @DnDParent : 647A4BFD
	draw_self();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7D03A3FC
else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 364F46BD
	/// @DnDParent : 7D03A3FC
	instance_destroy();}