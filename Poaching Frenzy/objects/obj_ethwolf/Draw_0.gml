/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01803D58
/// @DnDArgument : "var" "global.wolfAlive"
/// @DnDArgument : "value" "true"
if(global.wolfAlive == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 068B6F3A
	/// @DnDParent : 01803D58
	/// @DnDArgument : "var" "global.hasFought"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(global.hasFought >= 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
		/// @DnDVersion : 1
		/// @DnDHash : 3CCD88FC
		/// @DnDParent : 068B6F3A
		draw_self();}}