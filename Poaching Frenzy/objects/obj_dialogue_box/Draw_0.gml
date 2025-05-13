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
	/// @DnDArgument : "code" "// checks which sprite should be drawn next$(13_10)$(13_10)if current_line == 0 sprite_index = spr_chudette_dialogue;$(13_10)if current_line == 1 sprite_index = spr_chud_dialogue;$(13_10)$(13_10)$(13_10)//boar arrives$(13_10)if current_line == 2 {$(13_10)    // only create the boar once$(13_10)	if !global.boarCreated {$(13_10)		instance_create_layer(2900, 1950, "fore", obj_boar_tutorial);$(13_10)		global.boarCreated = true;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)if current_line == 2 sprite_index = spr_chudette_dialogue;$(13_10)if current_line == 3 sprite_index = spr_chud_dialogue;$(13_10)if current_line == 5 sprite_index = spr_chudette_dialogue;$(13_10)if current_line == 6 sprite_index = spr_chud_dialogue;"
	// checks which sprite should be drawn next
	
	if current_line == 0 sprite_index = spr_chudette_dialogue;
	if current_line == 1 sprite_index = spr_chud_dialogue;
	
	
	//boar arrives
	if current_line == 2 {
	    // only create the boar once
		if !global.boarCreated {
			instance_create_layer(2900, 1950, "fore", obj_boar_tutorial);
			global.boarCreated = true;
		}
	}
	
	
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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 560AE847
/// @DnDArgument : "var" "global.hasFought"
/// @DnDArgument : "value" "1"
if(global.hasFought == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1D5F104D
	/// @DnDParent : 560AE847
	/// @DnDArgument : "spriteind" "spr_chud_dialogue"
	/// @DnDSaveInfo : "spriteind" "spr_chud_dialogue"
	sprite_index = spr_chud_dialogue;
	image_index = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 13D7D173
	/// @DnDParent : 560AE847
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 36367CFD
	/// @DnDParent : 560AE847
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(postIntro)) {$(13_10)    draw_text(_x, _y, postIntro[current_line]);$(13_10)    }$(13_10)"
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
	draw_set_halign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(postIntro)) {
	    draw_text(_x, _y, postIntro[current_line]);
	    }}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D919400
/// @DnDArgument : "var" "global.noRide"
/// @DnDArgument : "value" "1"
if(global.noRide == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 61511484
	/// @DnDParent : 5D919400
	/// @DnDArgument : "spriteind" "spr_chud_dialogue"
	/// @DnDSaveInfo : "spriteind" "spr_chud_dialogue"
	sprite_index = spr_chud_dialogue;
	image_index = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 3A58829E
	/// @DnDParent : 5D919400
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 40CDEA5F
	/// @DnDParent : 5D919400
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(noRide_d)) {$(13_10)    draw_text(_x, _y, noRide_d[current_line]);$(13_10)    }$(13_10)"
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
	draw_set_halign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(noRide_d)) {
	    draw_text(_x, _y, noRide_d[current_line]);
	    }}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AA2EB92
/// @DnDArgument : "var" "global.zone2Discover"
/// @DnDArgument : "value" "1"
if(global.zone2Discover == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 143644A4
	/// @DnDParent : 4AA2EB92
	/// @DnDArgument : "spriteind" "spr_chud_dialogue"
	/// @DnDSaveInfo : "spriteind" "spr_chud_dialogue"
	sprite_index = spr_chud_dialogue;
	image_index = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 4AC17D21
	/// @DnDParent : 4AA2EB92
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 46EF5891
	/// @DnDParent : 4AA2EB92
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(zone2)) {$(13_10)    draw_text(_x, _y, zone2[current_line]);$(13_10)    }$(13_10)"
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
	draw_set_halign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(zone2)) {
	    draw_text(_x, _y, zone2[current_line]);
	    }}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64A7BAF6
/// @DnDArgument : "var" "global.zone3Discover"
/// @DnDArgument : "value" "1"
if(global.zone3Discover == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4D5812C2
	/// @DnDParent : 64A7BAF6
	/// @DnDArgument : "spriteind" "spr_chud_dialogue"
	/// @DnDSaveInfo : "spriteind" "spr_chud_dialogue"
	sprite_index = spr_chud_dialogue;
	image_index = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 3D746424
	/// @DnDParent : 64A7BAF6
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1813C83C
	/// @DnDParent : 64A7BAF6
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(zone3)) {$(13_10)    draw_text(_x, _y, zone3[current_line]);$(13_10)    }$(13_10)"
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
	draw_set_halign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(zone3)) {
	    draw_text(_x, _y, zone3[current_line]);
	    }}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23389DBE
/// @DnDArgument : "var" "global.zone4Discover"
/// @DnDArgument : "value" "1"
if(global.zone4Discover == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6876CFDB
	/// @DnDParent : 23389DBE
	/// @DnDArgument : "spriteind" "spr_chud_dialogue"
	/// @DnDSaveInfo : "spriteind" "spr_chud_dialogue"
	sprite_index = spr_chud_dialogue;
	image_index = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 78C63E3D
	/// @DnDParent : 23389DBE
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 43FA5152
	/// @DnDParent : 23389DBE
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(zone4)) {$(13_10)    draw_text(_x, _y, zone4[current_line]);$(13_10)    }$(13_10)"
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
	draw_set_halign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(zone4)) {
	    draw_text(_x, _y, zone4[current_line]);
	    }}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AD912C4
/// @DnDArgument : "var" "global.zone5Discover"
/// @DnDArgument : "value" "1"
if(global.zone5Discover == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2A94FCE7
	/// @DnDParent : 3AD912C4
	/// @DnDArgument : "spriteind" "spr_chud_dialogue"
	/// @DnDSaveInfo : "spriteind" "spr_chud_dialogue"
	sprite_index = spr_chud_dialogue;
	image_index = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 00136B0E
	/// @DnDParent : 3AD912C4
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 701E0AE9
	/// @DnDParent : 3AD912C4
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(zone5)) {$(13_10)    draw_text(_x, _y, zone5[current_line]);$(13_10)    }$(13_10)"
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
	draw_set_halign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(zone5)) {
	    draw_text(_x, _y, zone5[current_line]);
	    }}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 191E776F
/// @DnDArgument : "var" "global.zone6Discover"
/// @DnDArgument : "value" "1"
if(global.zone6Discover == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0A38B502
	/// @DnDParent : 191E776F
	/// @DnDArgument : "spriteind" "spr_chud_dialogue"
	/// @DnDSaveInfo : "spriteind" "spr_chud_dialogue"
	sprite_index = spr_chud_dialogue;
	image_index = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 6F5EDA57
	/// @DnDParent : 191E776F
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5F538019
	/// @DnDParent : 191E776F
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(zone6)) {$(13_10)    draw_text(_x, _y, zone6[current_line]);$(13_10)    }$(13_10)"
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
	draw_set_halign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(zone6)) {
	    draw_text(_x, _y, zone6[current_line]);
	    }}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2796F6AE
/// @DnDArgument : "var" "global.hijackBus"
/// @DnDArgument : "value" "1"
if(global.hijackBus == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6854B3A9
	/// @DnDParent : 2796F6AE
	/// @DnDArgument : "spriteind" "spr_chud_dialogue"
	/// @DnDSaveInfo : "spriteind" "spr_chud_dialogue"
	sprite_index = spr_chud_dialogue;
	image_index = 0;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 4860B5C6
	/// @DnDParent : 2796F6AE
	draw_self();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2E284FD3
	/// @DnDParent : 2796F6AE
	/// @DnDArgument : "code" "// changing visibility of self$(13_10)// used to be needed$(13_10)$(13_10)with (obj_dialogue_box) {$(13_10)  visible = true;$(13_10)}$(13_10)$(13_10)$(13_10)var _y = 3250; // Starting Y position$(13_10)var _x = 0; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)$(13_10)// draws the next line of dialogue$(13_10)if (current_line < array_length(firstBus)) {$(13_10)    draw_text(_x, _y, firstBus[current_line]);$(13_10)    }$(13_10)"
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
	draw_set_halign(fa_top);
	
	// draws the next line of dialogue
	if (current_line < array_length(firstBus)) {
	    draw_text(_x, _y, firstBus[current_line]);
	    }}