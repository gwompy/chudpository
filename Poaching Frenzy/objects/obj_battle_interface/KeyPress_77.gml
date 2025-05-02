/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 47D93D8B
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 26B9E9EE
/// @DnDArgument : "var" "meleeDamage"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "20"
meleeDamage = floor(random_range(0, 20 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C4AA879
/// @DnDArgument : "expr" "-meleeDamage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "enemHealth"
enemHealth += -meleeDamage;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14452FC7
/// @DnDArgument : "var" "meleeDamage"
if(meleeDamage == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5146179D
	/// @DnDParent : 14452FC7
	/// @DnDArgument : "expr" ""Missed!""
	/// @DnDArgument : "var" "meleeDamage"
	meleeDamage = "Missed!";}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F24A156
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "meleeDamage"
/// @DnDArgument : "var" "newAttack"
/// @DnDArgument : "var_1" "attackVal"
newAttack = 1;
attackVal = meleeDamage;