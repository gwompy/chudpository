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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C611452
/// @DnDArgument : "var" "global.zone2Discover"
/// @DnDArgument : "value" "1"
if(global.zone2Discover == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 340E6E6A
	/// @DnDParent : 4C611452
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(zone2)) {$(13_10)        current_line = 0;$(13_10)		global.hasDiscovered2 = 1;$(13_10)		global.zone2Discover = 0;$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(zone2)) {
	        current_line = 0;
			global.hasDiscovered2 = 1;
			global.zone2Discover = 0;
	    }
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 093CEDA2
/// @DnDArgument : "var" "global.zone3Discover"
/// @DnDArgument : "value" "1"
if(global.zone3Discover == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5668C0D8
	/// @DnDParent : 093CEDA2
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(zone3)) {$(13_10)        current_line = 0;$(13_10)		global.hasDiscovered3 = 1;$(13_10)		global.zone3Discover = 0;$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(zone3)) {
	        current_line = 0;
			global.hasDiscovered3 = 1;
			global.zone3Discover = 0;
	    }
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A2FD56A
/// @DnDArgument : "var" "global.zone4Discover"
/// @DnDArgument : "value" "1"
if(global.zone4Discover == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2790FFEE
	/// @DnDParent : 1A2FD56A
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(zone4)) {$(13_10)        current_line = 0;$(13_10)		global.hasDiscovered4 = 1;$(13_10)		global.zone4Discover = 0;$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(zone4)) {
	        current_line = 0;
			global.hasDiscovered4 = 1;
			global.zone4Discover = 0;
	    }
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2442266E
/// @DnDArgument : "var" "global.zone5Discover"
/// @DnDArgument : "value" "1"
if(global.zone5Discover == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 553DBBD0
	/// @DnDParent : 2442266E
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(zone5)) {$(13_10)        current_line = 0;$(13_10)		global.hasDiscovered5 = 1;$(13_10)		global.zone5Discover = 0;$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(zone5)) {
	        current_line = 0;
			global.hasDiscovered5 = 1;
			global.zone5Discover = 0;
	    }
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4914CC0D
/// @DnDArgument : "var" "global.zone6Discover"
/// @DnDArgument : "value" "1"
if(global.zone6Discover == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5B40FC2F
	/// @DnDParent : 4914CC0D
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(zone6)) {$(13_10)        current_line = 0;$(13_10)		global.hasDiscovered6 = 1;$(13_10)		global.zone6Discover = 0;$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(zone6)) {
	        current_line = 0;
			global.hasDiscovered6 = 1;
			global.zone6Discover = 0;
	    }
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DCF747D
/// @DnDArgument : "var" "global.hijackBus"
/// @DnDArgument : "value" "1"
if(global.hijackBus == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3CD2D2CC
	/// @DnDParent : 5DCF747D
	/// @DnDArgument : "code" "// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(firstBus)) {$(13_10)        current_line = 0;$(13_10)		global.hijackBus = 0;$(13_10)		global.hasHijacked = 1;$(13_10)    }$(13_10)}$(13_10)"
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(firstBus)) {
	        current_line = 0;
			global.hijackBus = 0;
			global.hasHijacked = 1;
	    }
	}}