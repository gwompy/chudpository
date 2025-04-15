/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 17033E1E
/// @DnDArgument : "target" "chudsprite"
/// @DnDArgument : "instvar" "14"
chudsprite = sprite_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EDCFD87
/// @DnDArgument : "var" "chudsprite"
/// @DnDArgument : "value" "spr_chud_walkfront"
if(chudsprite == spr_chud_walkfront){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 60EFED8B
	/// @DnDParent : 1EDCFD87
	/// @DnDArgument : "spriteind" "spr_chud_walkback"
	/// @DnDSaveInfo : "spriteind" "spr_chud_walkback"
	sprite_index = spr_chud_walkback;
	image_index = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6A8487DB
/// @DnDArgument : "key" "ord("W")"
var l6A8487DB_0;l6A8487DB_0 = keyboard_check(ord("W"));if (l6A8487DB_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 564313F6
	/// @DnDParent : 6A8487DB
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-10"
	/// @DnDArgument : "y_relative" "1"
	x += 0;y += -10;}