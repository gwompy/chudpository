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
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)$(13_10)if (current_line < array_length(tutorial_d)) {$(13_10)    draw_text(_x, _y, tutorial_d[current_line]);$(13_10)    }$(13_10)"
	// changing visibility of self
	// used to be needed
	
	with (obj_dialogue_box) {
	  visible = true;
	}
	
	
	var _y = 3250; // Starting Y position
	var _x = 0; // Starting X position
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_inv);
	draw_set_halign(fa_left);
	
	
	if (current_line < array_length(tutorial_d)) {
	    draw_text(_x, _y, tutorial_d[current_line]);
	    }}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5836C7B6
/// @DnDArgument : "var" "global.meetChudette"
/// @DnDArgument : "value" "1"
if(global.meetChudette == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 488EC7B7
	/// @DnDParent : 5836C7B6
	/// @DnDArgument : "code" "// checks which sprite should be drawn next$(13_10)$(13_10)if current_line == 0 sprite_index = spr_chudette_dialogue;$(13_10)if current_line == 1 sprite_index = spr_chud_dialogue;$(13_10)if current_line == 2 sprite_index = spr_chudette_dialogue;$(13_10)if current_line == 3 sprite_index = spr_chud_dialogue;$(13_10)if current_line == 5 sprite_index = spr_chudette_dialogue;$(13_10)if current_line == 6 sprite_index = spr_chud_dialogue;"
	// checks which sprite should be drawn next
	
	if current_line == 0 sprite_index = spr_chudette_dialogue;
	if current_line == 1 sprite_index = spr_chud_dialogue;
	if current_line == 2 sprite_index = spr_chudette_dialogue;
	if current_line == 3 sprite_index = spr_chud_dialogue;
	if current_line == 5 sprite_index = spr_chudette_dialogue;
	if current_line == 6 sprite_index = spr_chud_dialogue;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 618F0304
	/// @DnDParent : 5836C7B6
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 73F55647
	/// @DnDParent : 5836C7B6
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(chudette_d)) {$(13_10)    draw_text(_x, _y, chudette_d[current_line]);$(13_10)    }$(13_10)"
	// changing visibility of self
	// used to be needed
	
	with (obj_dialogue_box) {
	  visible = true;
	}
	
	
	var _y = 3250; // Starting Y position
	var _x = 0; // Starting X position
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_inv);
	draw_set_halign(fa_left);
	
	
	// draws the next line of dialogue
	if (current_line < array_length(chudette_d)) {
	    draw_text(_x, _y, chudette_d[current_line]);
	    }}