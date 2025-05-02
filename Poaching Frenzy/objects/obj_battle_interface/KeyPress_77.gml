/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05AD748F
/// @DnDArgument : "var" "cooldown"
if(cooldown == 0){	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 47D93D8B
	/// @DnDParent : 05AD748F
	randomize();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 26B9E9EE
	/// @DnDParent : 05AD748F
	/// @DnDArgument : "var" "meleeDamage"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "10"
	meleeDamage = floor(random_range(0, 10 + 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C4AA879
	/// @DnDInput : 2
	/// @DnDParent : 05AD748F
	/// @DnDArgument : "expr" "-meleeDamage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "enemHealth"
	/// @DnDArgument : "var_1" "cooldown"
	enemHealth += -meleeDamage;
	cooldown = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14452FC7
	/// @DnDParent : 05AD748F
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
	/// @DnDParent : 05AD748F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_1" "meleeDamage"
	/// @DnDArgument : "var" "newAttack"
	/// @DnDArgument : "var_1" "attackVal"
	newAttack = 1;
	attackVal = meleeDamage;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 62B9FA40
else{	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 786AA4EF
	/// @DnDParent : 62B9FA40
	/// @DnDArgument : "soundid" "snd_denied_action"
	/// @DnDSaveInfo : "soundid" "snd_denied_action"
	audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);}