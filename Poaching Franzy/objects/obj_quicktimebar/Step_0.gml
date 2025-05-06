/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 588E69B9
/// @DnDArgument : "code" "// Interactivity for QTE$(13_10)$(13_10)if (qte_active && keyboard_check_pressed(vk_space)) {$(13_10)	$(13_10)    // First check if the arrow instance still exists$(13_10)    if (instance_exists(arrow_instance)) {$(13_10)		$(13_10)        // Check if the arrow is in the target zone$(13_10)        if (arrow_instance.x >= target_x && arrow_instance.x <= target_x + target_width) {$(13_10)			$(13_10)            //success $(13_10)            obj_battle_interface.enemHealth -= 25;$(13_10)            obj_battle_interface.meleeDamage = 25;$(13_10)            obj_battle_interface.newAttack = 1;$(13_10)			$(13_10)        } else {$(13_10)			$(13_10)            //fail $(13_10)            obj_battle_interface.enemHealth -= 5;$(13_10)            obj_battle_interface.meleeDamage = 5;$(13_10)            obj_battle_interface.newAttack = 1;$(13_10)            obj_battle_interface.condition = "bad";$(13_10)        }$(13_10)$(13_10)        // Cleanup after QTE$(13_10)        instance_destroy(arrow_instance);$(13_10)        arrow_instance = noone; // Clear reference$(13_10)        qte_active = false;$(13_10)        obj_battle_interface.cooldown = 0;$(13_10)    }$(13_10)}$(13_10)$(13_10)//Additional restart$(13_10)if (!qte_active && !instance_exists(arrow_instance) && obj_battle_interface.cooldown == 0) {$(13_10)	$(13_10)    // Reset QTE for next run$(13_10)    $(13_10)    arrow_instance = instance_create_layer(bar_x, bar_y, "fore", obj_arrow);$(13_10)    randomize();$(13_10)	arrow_speed = choose(5, 6, 7);$(13_10)	obj_battle_interface.alarm[0] = 30$(13_10)}"
// Interactivity for QTE

if (qte_active && keyboard_check_pressed(vk_space)) {
	
    // First check if the arrow instance still exists
    if (instance_exists(arrow_instance)) {
		
        // Check if the arrow is in the target zone
        if (arrow_instance.x >= target_x && arrow_instance.x <= target_x + target_width) {
			
            //success 
            obj_battle_interface.enemHealth -= 25;
            obj_battle_interface.meleeDamage = 25;
            obj_battle_interface.newAttack = 1;
			
        } else {
			
            //fail 
            obj_battle_interface.enemHealth -= 5;
            obj_battle_interface.meleeDamage = 5;
            obj_battle_interface.newAttack = 1;
            obj_battle_interface.condition = "bad";
        }

        // Cleanup after QTE
        instance_destroy(arrow_instance);
        arrow_instance = noone; // Clear reference
        qte_active = false;
        obj_battle_interface.cooldown = 0;
    }
}

//Additional restart
if (!qte_active && !instance_exists(arrow_instance) && obj_battle_interface.cooldown == 0) {
	
    // Reset QTE for next run
    
    arrow_instance = instance_create_layer(bar_x, bar_y, "fore", obj_arrow);
    randomize();
	arrow_speed = choose(5, 6, 7);
	obj_battle_interface.alarm[0] = 30
}