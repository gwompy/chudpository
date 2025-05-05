/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F7AFEAD
/// @DnDComment : attack movement block
/// @DnDArgument : "code" "//AI for troubleshooting$(13_10)$(13_10)$(13_10)// Check for M key press to reset progress$(13_10)if (keyboard_check_pressed(ord("M"))) {$(13_10)    meleeDamage_pathProgress = 0; // Reset to start of path$(13_10)}$(13_10)$(13_10)// reset enemy path progress$(13_10)if (enemStart == 1) {$(13_10)    enemDamage_pathProgress = 0; // Reset to start of path$(13_10)	enemStart = 0;$(13_10)}$(13_10)$(13_10)$(13_10)// Update path progress$(13_10)meleeDamage_pathProgress += meleeDamage_pathSpeed;$(13_10)if (meleeDamage_pathProgress >= 1) {$(13_10)    meleeDamage_pathProgress = 0; $(13_10)	newAttack = 0 // hides the bouncy number$(13_10)}$(13_10)$(13_10)$(13_10)// Update path progress$(13_10)enemDamage_pathProgress += enemDamage_pathSpeed;$(13_10)if (enemDamage_pathProgress >= 1) {$(13_10)    enemDamage_pathProgress = 0; $(13_10)	enemAttack = 0 // hides the bouncy number$(13_10)	cooldown = 0 //resets the cooldown$(13_10)}$(13_10)$(13_10)$(13_10)// Get the current X/Y position on the path$(13_10)meleeDamage_drawX = path_get_x(p_dmg, meleeDamage_pathProgress);$(13_10)meleeDamage_drawY = path_get_y(p_dmg, meleeDamage_pathProgress);$(13_10)$(13_10)enemDamage_drawX = path_get_x(p_enem, enemDamage_pathProgress);$(13_10)enemDamage_drawY = path_get_y(p_enem, enemDamage_pathProgress);$(13_10)$(13_10)"
//AI for troubleshooting


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
/// @DnDArgument : "code" "if (showInv) {$(13_10)    // Count consumables$(13_10)    var count_consumables = 0;$(13_10)    for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)        var _item = ds_list_find_value(obj_inventory.inventory, i);$(13_10)        if (array_contains(consumables, _item.name) != -1) {$(13_10)            count_consumables++;$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    var total_options = count_consumables + 1;  // +1 for Back button$(13_10)    $(13_10)    //defining keys$(13_10)    var key_left = keyboard_check_pressed(ord("A"));$(13_10)    var key_right = keyboard_check_pressed(ord("D"));$(13_10)    var key_confirm = keyboard_check_pressed(vk_space);$(13_10)$(13_10)    //menu navigation$(13_10)    if (key_right) {$(13_10)        selected_index = (selected_index + 1) mod total_options;$(13_10)    }$(13_10)    else if (key_left) {$(13_10)        selected_index = (selected_index - 1 + total_options) mod total_options;$(13_10)    }$(13_10)    $(13_10)    // Handle confirmation$(13_10)    if (key_confirm) {$(13_10)        if (selected_index < count_consumables) {$(13_10)            // Find and use selected consumable$(13_10)            var current_idx = 0;$(13_10)            for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)                var _item = ds_list_find_value(obj_inventory.inventory, i);$(13_10)                if (array_contains(consumables, _item.name) != -1) {$(13_10)                    if (current_idx == selected_index) {$(13_10)                        // uses an item$(13_10)                        script_execute(removeitem, _item.name, 1);$(13_10)                        $(13_10)                        // Reset selection after use$(13_10)                        selected_index = 0;$(13_10)                        break;$(13_10)                    }$(13_10)                    current_idx++;$(13_10)                }$(13_10)            }$(13_10)        } else {$(13_10)            // Back button logic$(13_10)            alarm_set(1, 30);$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    // Keep selection in bounds$(13_10)    selected_index = clamp(selected_index, 0, total_options - 1);$(13_10)}"
if (showInv) {
    // Count consumables
    var count_consumables = 0;
    for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
        var _item = ds_list_find_value(obj_inventory.inventory, i);
        if (array_contains(consumables, _item.name) != -1) {
            count_consumables++;
        }
    }
    
    var total_options = count_consumables + 1;  // +1 for Back button
    
    //defining keys
    var key_left = keyboard_check_pressed(ord("A"));
    var key_right = keyboard_check_pressed(ord("D"));
    var key_confirm = keyboard_check_pressed(vk_space);

    //menu navigation
    if (key_right) {
        selected_index = (selected_index + 1) mod total_options;
    }
    else if (key_left) {
        selected_index = (selected_index - 1 + total_options) mod total_options;
    }
    
    // Handle confirmation
    if (key_confirm) {
        if (selected_index < count_consumables) {
            // Find and use selected consumable
            var current_idx = 0;
            for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
                var _item = ds_list_find_value(obj_inventory.inventory, i);
                if (array_contains(consumables, _item.name) != -1) {
                    if (current_idx == selected_index) {
                        // uses an item
                        script_execute(removeitem, _item.name, 1);
                        
                        // Reset selection after use
                        selected_index = 0;
                        break;
                    }
                    current_idx++;
                }
            }
        } else {
            // Back button logic
            alarm_set(1, 30);
        }
    }
    
    // Keep selection in bounds
    selected_index = clamp(selected_index, 0, total_options - 1);
}