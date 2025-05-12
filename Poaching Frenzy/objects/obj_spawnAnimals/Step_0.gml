/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F434851
/// @DnDArgument : "var" "global.hasFought"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.hasFought >= 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 102BC403
	/// @DnDParent : 4F434851
	/// @DnDArgument : "var" "global.spawned"
	/// @DnDArgument : "value" "false"
	if(global.spawned == false){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7317ECC2
		/// @DnDParent : 102BC403
		/// @DnDArgument : "xpos" "3328"
		/// @DnDArgument : "ypos" "1792"
		/// @DnDArgument : "objectid" "obj_forward"
		/// @DnDArgument : "layer" ""fore""
		/// @DnDSaveInfo : "objectid" "obj_forward"
		instance_create_layer(3328, 1792, "fore", obj_forward);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5147DBCF
		/// @DnDParent : 102BC403
		/// @DnDArgument : "xpos" "2816"
		/// @DnDArgument : "ypos" "512"
		/// @DnDArgument : "objectid" "obj_sheep"
		/// @DnDArgument : "layer" ""fore""
		/// @DnDSaveInfo : "objectid" "obj_sheep"
		instance_create_layer(2816, 512, "fore", obj_sheep);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6F0A9EEC
		/// @DnDParent : 102BC403
		/// @DnDArgument : "xpos" "512"
		/// @DnDArgument : "ypos" "512"
		/// @DnDArgument : "objectid" "obj_bison"
		/// @DnDArgument : "layer" ""fore""
		/// @DnDSaveInfo : "objectid" "obj_bison"
		instance_create_layer(512, 512, "fore", obj_bison);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 27EAD2B4
		/// @DnDParent : 102BC403
		/// @DnDArgument : "xpos" "768"
		/// @DnDArgument : "ypos" "3328"
		/// @DnDArgument : "objectid" "obj_boar"
		/// @DnDArgument : "layer" ""bck""
		/// @DnDSaveInfo : "objectid" "obj_boar"
		instance_create_layer(768, 3328, "bck", obj_boar);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5930152E
		/// @DnDParent : 102BC403
		/// @DnDArgument : "xpos" "3328"
		/// @DnDArgument : "ypos" "3328"
		/// @DnDArgument : "objectid" "obj_ethwolf"
		/// @DnDArgument : "layer" ""bck""
		/// @DnDSaveInfo : "objectid" "obj_ethwolf"
		instance_create_layer(3328, 3328, "bck", obj_ethwolf);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4680A43E
		/// @DnDParent : 102BC403
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "global.spawned"
		global.spawned = true;}}