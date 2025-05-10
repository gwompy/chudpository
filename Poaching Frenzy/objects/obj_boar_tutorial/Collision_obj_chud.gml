/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5804272D
/// @DnDArgument : "var" "global.hasFought"
/// @DnDArgument : "not" "1"
if(!(global.hasFought == 0)){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4DED45FB
	/// @DnDParent : 5804272D
	/// @DnDArgument : "room" "r_boar"
	/// @DnDSaveInfo : "room" "r_boar"
	room_goto(r_boar);}