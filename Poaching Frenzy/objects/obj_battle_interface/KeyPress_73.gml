/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CB35E1E
/// @DnDArgument : "var" "cooldown"
if(cooldown == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 038B3965
	/// @DnDParent : 2CB35E1E
	/// @DnDArgument : "var" "showInv"
	if(showInv == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7A95D399
		/// @DnDParent : 038B3965
		/// @DnDArgument : "spriteind" "spr_blank_interface"
		/// @DnDSaveInfo : "spriteind" "spr_blank_interface"
		sprite_index = spr_blank_interface;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74E8CF12
		/// @DnDParent : 038B3965
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "showInv"
		showInv = 1;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0CDDC534
else{	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 05053764
	/// @DnDParent : 0CDDC534
	/// @DnDArgument : "soundid" "snd_denied_action"
	/// @DnDSaveInfo : "soundid" "snd_denied_action"
	audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);}