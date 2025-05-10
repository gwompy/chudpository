/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F7AFEAD
/// @DnDComment : attack movement block
/// @DnDArgument : "code" "//AI for troubleshooting$(13_10)$(13_10)//Constantly check the percentages$(13_10)enemHealthpercentage = (enemHealth/enemMax)*100$(13_10)chudHealthpercentage = (global.chudHealth/global.max_health)*100$(13_10)$(13_10)// Check for M key press to reset progress$(13_10)if (keyboard_check_pressed(ord("M"))) {$(13_10)    meleeDamage_pathProgress = 0; // Reset to start of path$(13_10)}$(13_10)$(13_10)// reset enemy path progress$(13_10)if (enemStart == 1) {$(13_10)    enemDamage_pathProgress = 0; // Reset to start of path$(13_10)	enemStart = 0;$(13_10)}$(13_10)$(13_10)$(13_10)// Update path progress$(13_10)meleeDamage_pathProgress += meleeDamage_pathSpeed;$(13_10)if (meleeDamage_pathProgress >= 1) {$(13_10)    meleeDamage_pathProgress = 0; $(13_10)	newAttack = 0 // hides the bouncy number$(13_10)}$(13_10)$(13_10)$(13_10)// Update path progress$(13_10)enemDamage_pathProgress += enemDamage_pathSpeed;$(13_10)if (enemDamage_pathProgress >= 1) {$(13_10)    enemDamage_pathProgress = 0; $(13_10)	enemAttack = 0 // hides the bouncy number$(13_10)	cooldown = 0 //resets the cooldown$(13_10)}$(13_10)$(13_10)$(13_10)// Get the current X/Y position on the path$(13_10)meleeDamage_drawX = path_get_x(p_dmg, meleeDamage_pathProgress);$(13_10)meleeDamage_drawY = path_get_y(p_dmg, meleeDamage_pathProgress);$(13_10)$(13_10)enemDamage_drawX = path_get_x(p_enem, enemDamage_pathProgress);$(13_10)enemDamage_drawY = path_get_y(p_enem, enemDamage_pathProgress);$(13_10)$(13_10)"
//AI for troubleshooting

//Constantly check the percentages
enemHealthpercentage = (enemHealth/enemMax)*100
chudHealthpercentage = (global.chudHealth/global.max_health)*100

// Check for M key press to reset progress
if (keyboard_check_pressed(ord("M"))) {
    meleeDamage_pathProgress = 0; // Reset to start of path
}

// reset enemy path progress
if (enemStart == 1) {
    enemDamage_pathProgress = 0; // Reset to start of path
	enemStart = 0;
}


// Update path progress
meleeDamage_pathProgress += meleeDamage_pathSpeed;
if (meleeDamage_pathProgress >= 1) {
    meleeDamage_pathProgress = 0; 
	newAttack = 0 // hides the bouncy number
}


// Update path progress
enemDamage_pathProgress += enemDamage_pathSpeed;
if (enemDamage_pathProgress >= 1) {
    enemDamage_pathProgress = 0; 
	enemAttack = 0 // hides the bouncy number
	cooldown = 0 //resets the cooldown
}


// Get the current X/Y position on the path
meleeDamage_drawX = path_get_x(p_dmg, meleeDamage_pathProgress);
meleeDamage_drawY = path_get_y(p_dmg, meleeDamage_pathProgress);

enemDamage_drawX = path_get_x(p_enem, enemDamage_pathProgress);
enemDamage_drawY = path_get_y(p_enem, enemDamage_pathProgress);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 182C4BC2
/// @DnDComment : using consumables block
/// @DnDArgument : "code" "if (showInv) {$(13_10)    // Count consumables$(13_10)    var count_consumables = 0;$(13_10)    for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)        var _item = ds_list_find_value(obj_inventory.inventory, i);$(13_10)        if (array_contains(consumables, _item.name) != -1) {$(13_10)            count_consumables++;$(13_10)        }$(13_10)    }$(13_10)$(13_10)    var total_options = count_consumables + 1;  // +1 for Back button at index 0$(13_10)$(13_10)    // Define keys$(13_10)    var key_left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);$(13_10)    var key_right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);$(13_10)    var key_confirm = keyboard_check_pressed(vk_space);$(13_10)$(13_10)    // Menu navigation$(13_10)    if (key_right) {$(13_10)        selected_index = (selected_index + 1) mod total_options;$(13_10)    }$(13_10)    else if (key_left) {$(13_10)        selected_index = (selected_index - 1 + total_options) mod total_options;$(13_10)    }$(13_10)$(13_10)    // Handle confirmation$(13_10)    if (key_confirm) {$(13_10)        if (selected_index == 0) {$(13_10)            // Back button logic$(13_10)            alarm_set(1, 1);$(13_10)        } else {$(13_10)            // Use selected consumable$(13_10)            var current_idx = 1; // Start from index 1 since 0 is Back$(13_10)            for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)                var _item = ds_list_find_value(obj_inventory.inventory, i);$(13_10)                if (array_contains(consumables, _item.name) != 0) {$(13_10)                    if (current_idx == selected_index) {$(13_10)                        // Use the item$(13_10)                        script_execute(removeitem, _item.name, 1);$(13_10)$(13_10)                        // Modify health accordingly$(13_10)                        if (_item.name == "Energy Drink") {$(13_10)							global.chudHealth += 25;$(13_10)							$(13_10)							if global.chudHealth > global.max_health {$(13_10)								global.chudHealth = global.max_health	$(13_10)							}$(13_10)							$(13_10)                        }$(13_10)                        if (_item.name == "Animal Meat") {$(13_10)                            global.chudHealth += 10;$(13_10)                        }$(13_10)$(13_10)                        selected_index = 0; // Reset to Back$(13_10)                        break;$(13_10)                    }$(13_10)                    current_idx++;$(13_10)                }$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)$(13_10)    // Keep selection in bounds$(13_10)    selected_index = clamp(selected_index, 0, total_options - 1);$(13_10)}$(13_10)"
if (showInv) {
    // Count consumables
    var count_consumables = 0;
    for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
        var _item = ds_list_find_value(obj_inventory.inventory, i);
        if (array_contains(consumables, _item.name) != -1) {
            count_consumables++;
        }
    }

    var total_options = count_consumables + 1;  // +1 for Back button at index 0

    // Define keys
    var key_left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
    var key_right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
    var key_confirm = keyboard_check_pressed(vk_space);

    // Menu navigation
    if (key_right) {
        selected_index = (selected_index + 1) mod total_options;
    }
    else if (key_left) {
        selected_index = (selected_index - 1 + total_options) mod total_options;
    }

    // Handle confirmation
    if (key_confirm) {
        if (selected_index == 0) {
            // Back button logic
            alarm_set(1, 1);
        } else {
            // Use selected consumable
            var current_idx = 1; // Start from index 1 since 0 is Back
            for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
                var _item = ds_list_find_value(obj_inventory.inventory, i);
                if (array_contains(consumables, _item.name) != 0) {
                    if (current_idx == selected_index) {
                        // Use the item
                        script_execute(removeitem, _item.name, 1);

                        // Modify health accordingly
                        if (_item.name == "Energy Drink") {
							global.chudHealth += 25;
							
							if global.chudHealth > global.max_health {
								global.chudHealth = global.max_health	
							}
							
                        }
                        if (_item.name == "Animal Meat") {
                            global.chudHealth += 10;
                        }

                        selected_index = 0; // Reset to Back
                        break;
                    }
                    current_idx++;
                }
            }
        }
    }

    // Keep selection in bounds
    selected_index = clamp(selected_index, 0, total_options - 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E417256
/// @DnDArgument : "var" "enemHealth"
/// @DnDArgument : "op" "3"
if(enemHealth <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6869F364
	/// @DnDParent : 3E417256
	/// @DnDArgument : "var" "condition"
	/// @DnDArgument : "value" ""good""
	if(condition == "good"){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4C8F4E59
		/// @DnDParent : 6869F364
		/// @DnDArgument : "script" "additem"
		/// @DnDArgument : "arg" "enemReward,1"
		/// @DnDSaveInfo : "script" "additem"
		script_execute(additem, enemReward,1);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5CCD77C8
	/// @DnDComment : low quality pelt
	/// @DnDParent : 3E417256
	else{	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 53207DCB
		/// @DnDParent : 5CCD77C8
		/// @DnDArgument : "script" "additem"
		/// @DnDArgument : "arg" "enemReward + "Bad",1"
		/// @DnDSaveInfo : "script" "additem"
		script_execute(additem, enemReward + "Bad",1);}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 756F20AA
	/// @DnDParent : 3E417256
	/// @DnDArgument : "code" "/// @description properly modify global variable$(13_10)$(13_10)variable_instance_set(global, animal + "Alive", false);"
	/// @description properly modify global variable
	
	variable_instance_set(global, animal + "Alive", false);

	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 764410FA
	/// @DnDParent : 3E417256
	randomize();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 17204D6D
	/// @DnDParent : 3E417256
	/// @DnDArgument : "var" "drinkReward"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "5"
	drinkReward = floor(random_range(0, 5 + 1));

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 37C12022
	/// @DnDComment : add random amount of$(13_10)energy drinks$(13_10)$(13_10)just in case shop doesn't get done
	/// @DnDParent : 3E417256
	/// @DnDArgument : "script" "additem"
	/// @DnDArgument : "arg" ""Energy Drink",drinkReward"
	/// @DnDSaveInfo : "script" "additem"
	script_execute(additem, "Energy Drink",drinkReward);

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1712E7F3
	/// @DnDParent : 3E417256
	/// @DnDArgument : "room" "global.prevRoom"
	room_goto(global.prevRoom);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 792EAD00
/// @DnDArgument : "var" "global.chudHealth"
/// @DnDArgument : "op" "3"
if(global.chudHealth <= 0){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1061A730
	/// @DnDParent : 792EAD00
	/// @DnDArgument : "room" "r_death"
	/// @DnDSaveInfo : "room" "r_death"
	room_goto(r_death);}