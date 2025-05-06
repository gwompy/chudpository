/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 592D41B4
/// @DnDComment : end the inventory being shown
/// @DnDInput : 5
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "showInv"
/// @DnDArgument : "var_1" "alarm_active"
/// @DnDArgument : "var_2" "has_consumable"
/// @DnDArgument : "var_3" "consumableCount"
/// @DnDArgument : "var_4" "cooldown"
showInv = 0;
alarm_active = false;
has_consumable = false;
consumableCount = 0;
cooldown = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0F4AADD3
/// @DnDArgument : "spriteind" "spr_battle_interface"
/// @DnDSaveInfo : "spriteind" "spr_battle_interface"
sprite_index = spr_battle_interface;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0FF625F5
alarm_set(0, 30);