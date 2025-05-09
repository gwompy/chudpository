/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F5C1920
/// @DnDArgument : "var" "global.hasFought"
if(global.hasFought == 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 4B5FD10B
	/// @DnDParent : 7F5C1920
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 734C991D
	/// @DnDParent : 7F5C1920
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 530; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_battle);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(battleTutorial)) {$(13_10)    draw_text(_x, _y, battleTutorial[current_line]);$(13_10)    }$(13_10)"
	// changing visibility of self
	// used to be needed
	
	with (obj_dialogue_box) {
	  visible = true;
	}
	
	
	var _y = 530; // Starting Y position
	var _x = 0; // Starting X position
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_battle);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(battleTutorial)) {
	    draw_text(_x, _y, battleTutorial[current_line]);
	    }}