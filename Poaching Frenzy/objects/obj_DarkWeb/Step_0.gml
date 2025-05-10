/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61AFC0D2
/// @DnDArgument : "code" "/// @description How Shop Works $(13_10)//Control the Shop$(13_10)$(13_10)//Open Shop Method$(13_10)if (!shopOpen && keyboard_check_pressed(vk_enter)) {$(13_10)$(13_10)	//instance activate$(13_10)    shopOpen = true;$(13_10)    global.shop = true;$(13_10)    $(13_10)	$(13_10)} else if (shopOpen && keyboard_check_pressed(vk_enter)) {$(13_10)$(13_10)	//instance deactivate$(13_10)    shopOpen = false;$(13_10)    global.shop = false;$(13_10)    $(13_10)}$(13_10)$(13_10)// Shop is open$(13_10)if (shopOpen) {$(13_10)$(13_10)    if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))){$(13_10)$(13_10)        selected ++ ;$(13_10)        if (selected == itemCount){$(13_10)		$(13_10)			selected = 0;$(13_10)		}$(13_10)    }$(13_10)$(13_10)    if (keyboard_check_pressed(vk_up)) or  keyboard_check_pressed(ord("W")) {$(13_10)$(13_10)        selected -- ;$(13_10)        if (selected < 0) {$(13_10)			$(13_10)			selected = itemCount - 1;$(13_10)		}$(13_10)    }$(13_10)     // Sell an Item$(13_10)    var arr = items[selected]$(13_10)    var item = arr[0];$(13_10)    var value = arr[1];$(13_10)	if (keyboard_check_pressed(vk_space)) {$(13_10)		$(13_10)		// Check if item exists in inventory first$(13_10)		var item_index = -1;$(13_10)		for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)			var entry = obj_inventory.inventory[| i];$(13_10)			$(13_10)			if (entry.name == item) {$(13_10)				item_index = i;$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)$(13_10)		//check for poor quality pelts$(13_10)		var index2 = -1;$(13_10)		for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)			var entry = obj_inventory.inventory[| i];$(13_10)			$(13_10)			if (entry.name == item+"Bad") {$(13_10)				index2 = i;$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)$(13_10)$(13_10)		if (item_index != -1) {$(13_10)			// Remove one instance of item from inventory$(13_10)			script_execute(removeitem, entry.name, 1);$(13_10)			global.money += value;$(13_10)		}$(13_10)		$(13_10)		//poor pelt quality$(13_10)		else if (index2 != -1) {$(13_10)		$(13_10)			script_execute(removeitem, entry.name, 1);$(13_10)			$(13_10)			if (value - 50 > 0){$(13_10)			$(13_10)				global.money += value;$(13_10)			$(13_10)			}$(13_10)		$(13_10)		}$(13_10)		$(13_10)		//plays noise when trying to sell item you don't have$(13_10)		else {$(13_10)		$(13_10)			audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);$(13_10)		$(13_10)		}$(13_10)    }$(13_10)$(13_10)}$(13_10)"
/// @description How Shop Works 
//Control the Shop

//Open Shop Method
if (!shopOpen && keyboard_check_pressed(vk_enter)) {

	//instance activate
    shopOpen = true;
    global.shop = true;
    
	
} else if (shopOpen && keyboard_check_pressed(vk_enter)) {

	//instance deactivate
    shopOpen = false;
    global.shop = false;
    
}

// Shop is open
if (shopOpen) {

    if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))){

        selected ++ ;
        if (selected == itemCount){
		
			selected = 0;
		}
    }

    if (keyboard_check_pressed(vk_up)) or  keyboard_check_pressed(ord("W")) {

        selected -- ;
        if (selected < 0) {
			
			selected = itemCount - 1;
		}
    }
     // Sell an Item
    var arr = items[selected]
    var item = arr[0];
    var value = arr[1];
	if (keyboard_check_pressed(vk_space)) {
		
		// Check if item exists in inventory first
		var item_index = -1;
		for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
			var entry = obj_inventory.inventory[| i];
			
			if (entry.name == item) {
				item_index = i;
				break;
			}
		}

		//check for poor quality pelts
		var index2 = -1;
		for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
			var entry = obj_inventory.inventory[| i];
			
			if (entry.name == item+"Bad") {
				index2 = i;
				break;
			}
		}
		


		if (item_index != -1) {
			// Remove one instance of item from inventory
			script_execute(removeitem, entry.name, 1);
			global.money += value;
		}
		
		//poor pelt quality
		else if (index2 != -1) {
		
			script_execute(removeitem, entry.name, 1);
			
			if (value - 50 > 0){
			
				global.money += value;
			
			}
		
		}
		
		//plays noise when trying to sell item you don't have
		else {
		
			audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);
		
		}
    }

}