/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28FF683C
/// @DnDArgument : "var" "global.tutorial"
if(global.tutorial == 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 38C673BA
	/// @DnDParent : 28FF683C
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 40EE2C22
	/// @DnDParent : 28FF683C
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3500; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)$(13_10)if (current_line < array_length(tutorial_d)) {$(13_10)    draw_text(_x, _y, tutorial_d[current_line]);$(13_10)    }$(13_10)"
	// changing visibility of self
	
	
	with (obj_dialogue_box) {
	  visible = true;
	}
	
	
	var _y = 3500; // Starting Y position
	var _x = 0; // Starting X position
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_inv);
	draw_set_halign(fa_left);
	
	
	if (current_line < array_length(tutorial_d)) {
	    draw_text(_x, _y, tutorial_d[current_line]);
	    }}