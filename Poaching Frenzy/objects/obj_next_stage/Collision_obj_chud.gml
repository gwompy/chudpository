/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74C9EA92
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone1"
if(room == r_zone1){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 037C926D
	/// @DnDParent : 74C9EA92
	/// @DnDArgument : "room" "r_zone2"
	/// @DnDSaveInfo : "room" "r_zone2"
	room_goto(r_zone2);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DFE9271
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone2"
if(room == r_zone2){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 012A1AE6
	/// @DnDParent : 3DFE9271
	/// @DnDArgument : "room" "r_zone3"
	/// @DnDSaveInfo : "room" "r_zone3"
	room_goto(r_zone3);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CE83AB0
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone3"
if(room == r_zone3){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 63BAB673
	/// @DnDParent : 7CE83AB0
	/// @DnDArgument : "room" "r_zone4"
	/// @DnDSaveInfo : "room" "r_zone4"
	room_goto(r_zone4);}