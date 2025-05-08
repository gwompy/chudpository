/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71D38AC6
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_startup"
if(room == r_startup){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 753F1285
	/// @DnDParent : 71D38AC6
	/// @DnDArgument : "code" "//make sure text draws correctly$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_title);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)$(13_10)"
	//make sure text draws correctly
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_title);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5D8F72F7
	/// @DnDParent : 71D38AC6
	/// @DnDArgument : "x" "1000"
	/// @DnDArgument : "y" "900"
	/// @DnDArgument : "caption" ""Poaching Frenzy!""
	draw_text(1000, 900, string("Poaching Frenzy!") + "");}