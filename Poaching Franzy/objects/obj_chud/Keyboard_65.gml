/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 42B5B62B
/// @DnDArgument : "target" "chudsprite"
/// @DnDArgument : "instvar" "14"
chudsprite = sprite_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76C5D4FA
/// @DnDArgument : "var" "chudsprite"
/// @DnDArgument : "value" "spr_chud_walkback"
if(chudsprite == spr_chud_walkback){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1BB45260
	/// @DnDParent : 76C5D4FA
	/// @DnDArgument : "spriteind" "spr_chud_walkfront"
	/// @DnDSaveInfo : "spriteind" "spr_chud_walkfront"
	sprite_index = spr_chud_walkfront;
	image_index = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2AFC60A3
/// @DnDArgument : "key" "ord("A")"
var l2AFC60A3_0;l2AFC60A3_0 = keyboard_check(ord("A"));if (l2AFC60A3_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 798BD5BA
	/// @DnDParent : 2AFC60A3
	/// @DnDArgument : "x" "-15"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += -15;y += 0;}