/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 792242EA
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_inv"
if(room == r_inv)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0B5CDE1F
	/// @DnDParent : 792242EA
	/// @DnDArgument : "room" "global.prevRoom"
	room_goto(global.prevRoom);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 41733C28
else
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 20407EF1
	/// @DnDParent : 41733C28
	/// @DnDArgument : "room" "r_inv"
	/// @DnDSaveInfo : "room" "r_inv"
	room_goto(r_inv);
}