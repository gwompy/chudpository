/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 131695C7
/// @DnDArgument : "var" "global.sheepAlive"
/// @DnDArgument : "value" "true"
if(global.sheepAlive == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7997AD80
	/// @DnDParent : 131695C7
	/// @DnDArgument : "var" "global.hasFought"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(global.hasFought >= 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
		/// @DnDVersion : 1
		/// @DnDHash : 106EC220
		/// @DnDParent : 7997AD80
		draw_self();}}