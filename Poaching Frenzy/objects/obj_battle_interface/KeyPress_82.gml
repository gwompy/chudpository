/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BDEB71B
/// @DnDArgument : "var" "cooldown"
if(cooldown == 0){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 30987E98
	/// @DnDParent : 7BDEB71B
	/// @DnDArgument : "msg" ""placeholder""
	show_debug_message(string("placeholder"));}

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