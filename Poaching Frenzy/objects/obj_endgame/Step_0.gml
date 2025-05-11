/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3ECD56A9
/// @DnDArgument : "var" "global.arcwolfAlive"
/// @DnDArgument : "value" "false"
if(global.arcwolfAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 500B4260
	/// @DnDParent : 3ECD56A9
	/// @DnDArgument : "var" "global.bearAlive"
	/// @DnDArgument : "value" "false"
	if(global.bearAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C24B4FC
		/// @DnDParent : 500B4260
		/// @DnDArgument : "var" "global.reindeerAlive"
		/// @DnDArgument : "value" "false"
		if(global.reindeerAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0739C54A
			/// @DnDParent : 5C24B4FC
			/// @DnDArgument : "var" "global.sealAlive"
			/// @DnDArgument : "value" "false"
			if(global.sealAlive == false){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 6E97BF41
				/// @DnDParent : 0739C54A
				/// @DnDArgument : "room" "r_endgame"
				/// @DnDSaveInfo : "room" "r_endgame"
				room_goto(r_endgame);}}}}