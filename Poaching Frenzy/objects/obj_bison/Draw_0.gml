/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F567970
/// @DnDArgument : "var" "global.bisonAlive"
/// @DnDArgument : "value" "true"
if(global.bisonAlive == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02A0ADBA
	/// @DnDParent : 6F567970
	/// @DnDArgument : "var" "global.hasFought"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(global.hasFought >= 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
		/// @DnDVersion : 1
		/// @DnDHash : 3B0BDEEA
		/// @DnDParent : 02A0ADBA
		draw_self();}}