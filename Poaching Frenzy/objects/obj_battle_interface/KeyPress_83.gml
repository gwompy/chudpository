/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07675F17
/// @DnDArgument : "var" "cooldown"
if(cooldown == 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 35488903
	/// @DnDParent : 07675F17
	/// @DnDArgument : "code" "//reminder to replace "gun" with firearm names list$(13_10)$(13_10)$(13_10)//unable to make melee attacks while shooting$(13_10)cooldown = 1$(13_10)$(13_10)if (ds_list_find_index(obj_inventory.inventory, "gun") != 0) {$(13_10)    $(13_10)	obj_quicktimebar.qte_active = true$(13_10)	$(13_10)} else {$(13_10)    $(13_10)	audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);$(13_10)	$(13_10)}"
	//reminder to replace "gun" with firearm names list
	
	
	//unable to make melee attacks while shooting
	cooldown = 1
	
	if (ds_list_find_index(obj_inventory.inventory, "gun") != 0) {
	    
		obj_quicktimebar.qte_active = true
		
	} else {
	    
		audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);
		
	}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 05A4FAD6
else{	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 5DC8CC3C
	/// @DnDParent : 05A4FAD6
	/// @DnDArgument : "soundid" "snd_denied_action"
	/// @DnDSaveInfo : "soundid" "snd_denied_action"
	audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);}