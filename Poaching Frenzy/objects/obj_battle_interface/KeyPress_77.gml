/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05AD748F
/// @DnDComment : prevents rapid fire
/// @DnDArgument : "var" "cooldown"
if(cooldown == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2FC733A4
	/// @DnDParent : 05AD748F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "cooldown"
	cooldown = 1;

	/// @DnDAction : YoYo Games.Random.Randomize
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
	/// @DnDArgument : "min" "5"
	/// @DnDArgument : "max" "15"
	meleeDamage = floor(random_range(5, 15 + 1));

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
	/// @DnDParent : 05AD748F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "newAttack"
	newAttack = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 69946439
	/// @DnDParent : 05AD748F
	alarm_set(0, 30);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 343E81C4
	/// @DnDParent : 05AD748F
	/// @DnDArgument : "soundid" "snd_dagger"
	/// @DnDSaveInfo : "soundid" "snd_dagger"
	audio_play_sound(snd_dagger, 0, 0, 1.0, undefined, 1.0);}

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