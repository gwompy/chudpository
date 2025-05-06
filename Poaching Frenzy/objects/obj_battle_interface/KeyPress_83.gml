/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07675F17
/// @DnDArgument : "var" "cooldown"
if(cooldown == 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 35488903
	/// @DnDParent : 07675F17
	/// @DnDArgument : "code" "//reminder to replace "gun" with firearm names list$(13_10)$(13_10)$(13_10)//unable to make melee attacks while shooting$(13_10)cooldown = 1$(13_10)$(13_10)//check if consumables are in inventory$(13_10)$(13_10)for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)    var _item = obj_inventory.inventory[| i]; // Access ds_list element$(13_10)    if (array_contains(firearms, _item.name) != 0) { $(13_10)        has_firearm = true;$(13_10)        break;$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)//configuring damage values for each firearm$(13_10)if (ds_list_find_index(obj_inventory.inventory, "Uzi") != -1) {$(13_10)$(13_10)fireL = 10;$(13_10)fireH = 15;$(13_10)$(13_10)}$(13_10)$(13_10)if (ds_list_find_index(obj_inventory.inventory, "AK-47") != -1) {$(13_10)$(13_10)fireL = 10;$(13_10)fireH = 30;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (ds_list_find_index(obj_inventory.inventory, "Anti Material Rifle") != -1) {$(13_10)$(13_10)fireL = 79;$(13_10)fireH = 80;$(13_10)$(13_10)}$(13_10)$(13_10)if (ds_list_find_index(obj_inventory.inventory, "Rocket Launcher") != -1) {$(13_10)$(13_10)fireL = 100;$(13_10)fireH = 100;$(13_10)$(13_10)}$(13_10)$(13_10)if (ds_list_find_index(obj_inventory.inventory, "SMG") != -1) {$(13_10)$(13_10)fireL = 10;$(13_10)fireH = 40;$(13_10)$(13_10)}$(13_10)$(13_10)//firearm is in posession $(13_10)if has_firearm = true {$(13_10)	$(13_10)	qte_active = true;$(13_10)	$(13_10)}$(13_10)$(13_10)// You brought a knife to a gun fight$(13_10)if has_firearm = false {$(13_10)    $(13_10)	audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);$(13_10)	$(13_10)}"
	//reminder to replace "gun" with firearm names list
	
	
	//unable to make melee attacks while shooting
	cooldown = 1
	
	//check if consumables are in inventory
	
	for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
	    var _item = obj_inventory.inventory[| i]; // Access ds_list element
	    if (array_contains(firearms, _item.name) != 0) { 
	        has_firearm = true;
	        break;
	    }
	}
	
	
	//configuring damage values for each firearm
	if (ds_list_find_index(obj_inventory.inventory, "Uzi") != -1) {
	
	fireL = 10;
	fireH = 15;
	
	}
	
	if (ds_list_find_index(obj_inventory.inventory, "AK-47") != -1) {
	
	fireL = 10;
	fireH = 30;
	
	}
	
	
	if (ds_list_find_index(obj_inventory.inventory, "Anti Material Rifle") != -1) {
	
	fireL = 79;
	fireH = 80;
	
	}
	
	if (ds_list_find_index(obj_inventory.inventory, "Rocket Launcher") != -1) {
	
	fireL = 100;
	fireH = 100;
	
	}
	
	if (ds_list_find_index(obj_inventory.inventory, "SMG") != -1) {
	
	fireL = 10;
	fireH = 40;
	
	}
	
	//firearm is in posession 
	if has_firearm = true {
		
		qte_active = true;
		
	}
	
	// You brought a knife to a gun fight
	if has_firearm = false {
	    
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