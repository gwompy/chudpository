/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E6179D8
/// @DnDArgument : "var" "global.hasFought"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(global.hasFought < 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 672C42FF
	/// @DnDParent : 3E6179D8
	draw_self();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 66C887B7
else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0FAFED39
	/// @DnDParent : 66C887B7
	instance_destroy();}