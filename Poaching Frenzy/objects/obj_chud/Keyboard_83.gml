/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 02BE7F89
/// @DnDArgument : "target" "chudsprite"
/// @DnDArgument : "instvar" "14"
chudsprite = sprite_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24B42D18
/// @DnDArgument : "var" "chudsprite"
/// @DnDArgument : "value" "spr_chud_walkback"
if(chudsprite == spr_chud_walkback){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2056CB19
	/// @DnDParent : 24B42D18
	/// @DnDArgument : "spriteind" "spr_chud_walkfront"
	/// @DnDSaveInfo : "spriteind" "spr_chud_walkfront"
	sprite_index = spr_chud_walkfront;
	image_index = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 54338F27
/// @DnDArgument : "key" "ord("S")"
var l54338F27_0;l54338F27_0 = keyboard_check(ord("S"));if (l54338F27_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5958BD1A
	/// @DnDParent : 54338F27
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "10"
	/// @DnDArgument : "y_relative" "1"
	x += 0;y += 10;}