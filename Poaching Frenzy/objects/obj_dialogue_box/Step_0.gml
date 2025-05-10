/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E1F2220
/// @DnDArgument : "var" "global.tutorial"
if(global.tutorial == 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 451450E7
	/// @DnDParent : 3E1F2220
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)	sprite_index = spr_chud_dialogue;$(13_10)	image_index = 0;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)	// resets all dialogue variables$(13_10)    if (current_line >= array_length(tutorial_d)) {$(13_10)        current_line = 0;$(13_10)        global.tutorial = 1;$(13_10)		global.meetChudette = 0;$(13_10)        $(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
		sprite_index = spr_chud_dialogue;
		image_index = 0;
	    
	    // hides box when last line is reached
		// resets all dialogue variables
	    if (current_line >= array_length(tutorial_d)) {
	        current_line = 0;
	        global.tutorial = 1;
			global.meetChudette = 0;
	        
	    }
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F38B8A4
/// @DnDArgument : "var" "global.meetChudette"
/// @DnDArgument : "value" "1"
if(global.meetChudette == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5ACAC470
	/// @DnDParent : 7F38B8A4
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(chudette_d)) {$(13_10)        current_line = 0;$(13_10)        global.meetChudette = 0;$(13_10)		room_goto(r_boar);$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(chudette_d)) {
	        current_line = 0;
	        global.meetChudette = 0;
			room_goto(r_boar);
	    }
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 124BED48
/// @DnDArgument : "var" "global.hasFought"
/// @DnDArgument : "value" "1"
if(global.hasFought == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 29A6E17F
	/// @DnDParent : 124BED48
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(postIntro)) {$(13_10)        current_line = 0;$(13_10)		global.hasFought = 2;$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(postIntro)) {
	        current_line = 0;
			global.hasFought = 2;
	    }
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64F4617C
/// @DnDArgument : "var" "global.noRide"
/// @DnDArgument : "value" "1"
if(global.noRide == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 55D01022
	/// @DnDParent : 64F4617C
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(noRide_d)) {$(13_10)        current_line = 0;$(13_10)		global.noRide = 0;$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(noRide_d)) {
	        current_line = 0;
			global.noRide = 0;
	    }
	}}