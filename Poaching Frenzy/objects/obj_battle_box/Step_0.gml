/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05942F17
/// @DnDArgument : "var" "global.hasFought"
if(global.hasFought == 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 581E426D
	/// @DnDParent : 05942F17
	/// @DnDArgument : "code" "/// @description battle tutorial step event$(13_10)$(13_10)// idea provided by AI$(13_10)$(13_10)$(13_10)if keyboard_check_pressed(vk_space) {$(13_10)    current_line++;$(13_10)    $(13_10)    // hides box when last line is reached$(13_10)    if (current_line >= array_length(battleTutorial)) {$(13_10)        current_line = 0;$(13_10)        global.hasFought = 1;$(13_10)		$(13_10)    }$(13_10)}$(13_10)"
	/// @description battle tutorial step event
	
	// idea provided by AI
	
	
	if keyboard_check_pressed(vk_space) {
	    current_line++;
	    
	    // hides box when last line is reached
	    if (current_line >= array_length(battleTutorial)) {
	        current_line = 0;
	        global.hasFought = 1;
			
	    }
	}}