/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BDEB71B
/// @DnDArgument : "var" "cooldown"
if(cooldown == 0){	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 38A97CE4
	/// @DnDParent : 7BDEB71B
	randomize();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 704177A8
	/// @DnDParent : 7BDEB71B
	/// @DnDArgument : "var" "runCheck"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "10"
	runCheck = floor(random_range(1, 10 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 454E4D54
	/// @DnDComment : Run Succed
	/// @DnDParent : 7BDEB71B
	/// @DnDArgument : "var" "runCheck"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "7"
	if(runCheck >= 7){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 6A4AD88E
		/// @DnDParent : 454E4D54
		/// @DnDArgument : "room" "global.prevRoom"
		room_goto(global.prevRoom);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6C173902
	/// @DnDComment : Run Failed
	/// @DnDParent : 7BDEB71B
	else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7A5FF8C3
		/// @DnDParent : 6C173902
		/// @DnDArgument : "spriteind" "spr_blank_interface"
		/// @DnDSaveInfo : "spriteind" "spr_blank_interface"
		sprite_index = spr_blank_interface;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7515569E
		/// @DnDParent : 6C173902
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "runFail"
		runFail = 1;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6A5DAA50
else{	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6717D918
	/// @DnDParent : 6A5DAA50
	/// @DnDArgument : "soundid" "snd_denied_action"
	/// @DnDSaveInfo : "soundid" "snd_denied_action"
	audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);}