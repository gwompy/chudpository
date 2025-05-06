/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 1186127D
/// @DnDArgument : "target" "chudsprite"
/// @DnDArgument : "instvar" "14"
chudsprite = sprite_index;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FB24AF5
/// @DnDArgument : "var" "chudsprite"
/// @DnDArgument : "value" "spr_chud_walkback"
if(chudsprite == spr_chud_walkback){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7A1449E4
	/// @DnDParent : 6FB24AF5
	/// @DnDArgument : "spriteind" "spr_chud_walkfront"
	/// @DnDSaveInfo : "spriteind" "spr_chud_walkfront"
	sprite_index = spr_chud_walkfront;
	image_index = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 55F920E1
/// @DnDArgument : "key" "ord("D")"
var l55F920E1_0;l55F920E1_0 = keyboard_check(ord("D"));if (l55F920E1_0){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 60A9EC07
	/// @DnDParent : 55F920E1
	/// @DnDArgument : "x" "15"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += 15;y += 0;}