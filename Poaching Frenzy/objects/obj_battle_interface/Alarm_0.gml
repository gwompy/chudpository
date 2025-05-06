/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 05EC6386
/// @DnDArgument : "spriteind" "spr_battle_interface"
/// @DnDSaveInfo : "spriteind" "spr_battle_interface"
sprite_index = spr_battle_interface;
image_index = 0;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 7D550C58
/// @DnDComment : begin enemy attack
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3DEAC8E1
/// @DnDArgument : "var" "enemDamage"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "enemAL"
/// @DnDArgument : "max" "enemAH"
enemDamage = floor(random_range(enemAL, enemAH + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16B625C9
/// @DnDArgument : "expr" "-enemDamage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.chudHealth"
global.chudHealth += -enemDamage;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4AA476CD
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "enemStart"
enemStart = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BB50A68
/// @DnDInput : 3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "enemAttack"
/// @DnDArgument : "var_1" "alarm_active"
/// @DnDArgument : "var_2" "runFail"
enemAttack = 1;
alarm_active = false;
runFail = 0;