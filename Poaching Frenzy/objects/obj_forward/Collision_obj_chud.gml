/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FFA75DF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone1"
if(room == r_zone1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38BFC584
	/// @DnDParent : 2FFA75DF
	/// @DnDArgument : "var" "global.boarAlive"
	/// @DnDArgument : "value" "false"
	if(global.boarAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E84F722
		/// @DnDParent : 38BFC584
		/// @DnDArgument : "var" "global.wolfAlive"
		/// @DnDArgument : "value" "false"
		if(global.wolfAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E414153
			/// @DnDParent : 4E84F722
			/// @DnDArgument : "var" "global.sheepAlive"
			/// @DnDArgument : "value" "false"
			if(global.sheepAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 116A48DF
				/// @DnDParent : 7E414153
				/// @DnDArgument : "var" "global.bisonAlive"
				/// @DnDArgument : "value" "false"
				if(global.bisonAlive == false){	/// @DnDAction : YoYo Games.Rooms.Next_Room
					/// @DnDVersion : 1
					/// @DnDHash : 305261A6
					/// @DnDParent : 116A48DF
					room_goto_next();}}}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6F676594
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4323E998
	/// @DnDParent : 6F676594
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.noRide"
	global.noRide = 1;}