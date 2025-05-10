/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FFA75DF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone1"
if(room == r_zone1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38BFC584
	/// @DnDParent : 2FFA75DF
	/// @DnDArgument : "var" "global.boar1Alive"
	/// @DnDArgument : "value" "false"
	if(global.boar1Alive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E84F722
		/// @DnDParent : 38BFC584
		/// @DnDArgument : "var" "global.wolfAlive"
		/// @DnDArgument : "value" "false"
		if(global.wolfAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E414153
			/// @DnDParent : 4E84F722
			/// @DnDArgument : "var" "global.sheepAlive"
			/// @DnDArgument : "value" "false"
			if(global.sheepAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 116A48DF
				/// @DnDParent : 7E414153
				/// @DnDArgument : "var" "global.bisonAlive"
				/// @DnDArgument : "value" "false"
				if(global.bisonAlive == false){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0C0A4456
					/// @DnDInput : 2
					/// @DnDParent : 116A48DF
					/// @DnDArgument : "expr" "2"
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "var" "global.stage"
					/// @DnDArgument : "var_1" "hasRan"
					global.stage = 2;
					hasRan = 1;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 13FB6146
					/// @DnDParent : 116A48DF
					/// @DnDArgument : "script" "removeitem"
					/// @DnDArgument : "arg" ""Uzi",1"
					/// @DnDSaveInfo : "script" "removeitem"
					script_execute(removeitem, "Uzi",1);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 65BC42CD
					/// @DnDParent : 116A48DF
					/// @DnDArgument : "script" "additem"
					/// @DnDArgument : "arg" ""SMG",1"
					/// @DnDSaveInfo : "script" "additem"
					script_execute(additem, "SMG",1);
				
					/// @DnDAction : YoYo Games.Rooms.Next_Room
					/// @DnDVersion : 1
					/// @DnDHash : 305261A6
					/// @DnDParent : 116A48DF
					room_goto_next();}}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16F9B8D3
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone2"
if(room == r_zone2){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29F0972E
	/// @DnDParent : 16F9B8D3
	/// @DnDArgument : "var" "global.dogAlive"
	/// @DnDArgument : "value" "false"
	if(global.dogAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48BB4457
		/// @DnDParent : 29F0972E
		/// @DnDArgument : "var" "global.lionAlive"
		/// @DnDArgument : "value" "false"
		if(global.lionAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 05CB125B
			/// @DnDParent : 48BB4457
			/// @DnDArgument : "var" "global.buffaloAlive"
			/// @DnDArgument : "value" "false"
			if(global.buffaloAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 69B2E60F
				/// @DnDParent : 05CB125B
				/// @DnDArgument : "var" "global.gazAlive"
				/// @DnDArgument : "value" "false"
				if(global.gazAlive == false){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1B1EF60E
					/// @DnDInput : 2
					/// @DnDParent : 69B2E60F
					/// @DnDArgument : "expr" "3"
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "var" "global.stage"
					/// @DnDArgument : "var_1" "hasRan"
					global.stage = 3;
					hasRan = 1;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 5F421C8B
					/// @DnDParent : 69B2E60F
					/// @DnDArgument : "script" "removeitem"
					/// @DnDArgument : "arg" ""SMG",1"
					/// @DnDSaveInfo : "script" "removeitem"
					script_execute(removeitem, "SMG",1);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 6ABCE0F9
					/// @DnDParent : 69B2E60F
					/// @DnDArgument : "script" "additem"
					/// @DnDArgument : "arg" ""AK-47", 1"
					/// @DnDSaveInfo : "script" "additem"
					script_execute(additem, "AK-47", 1);
				
					/// @DnDAction : YoYo Games.Rooms.Next_Room
					/// @DnDVersion : 1
					/// @DnDHash : 7493ADF8
					/// @DnDParent : 69B2E60F
					room_goto_next();}}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C44A760
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone3"
if(room == r_zone3){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D125211
	/// @DnDParent : 6C44A760
	/// @DnDArgument : "var" "global.scorpionAlive"
	/// @DnDArgument : "value" "false"
	if(global.scorpionAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11CE1610
		/// @DnDParent : 7D125211
		/// @DnDArgument : "var" "global.rfoxAlive"
		/// @DnDArgument : "value" "false"
		if(global.rfoxAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7974A3A5
			/// @DnDParent : 11CE1610
			/// @DnDArgument : "var" "global.peccAlive"
			/// @DnDArgument : "value" "false"
			if(global.peccAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1A616355
				/// @DnDParent : 7974A3A5
				/// @DnDArgument : "var" "global.jackAlive"
				/// @DnDArgument : "value" "false"
				if(global.jackAlive == false){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4F48DE59
					/// @DnDInput : 2
					/// @DnDParent : 1A616355
					/// @DnDArgument : "expr" "4"
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "var" "global.stage"
					/// @DnDArgument : "var_1" "hasRan"
					global.stage = 4;
					hasRan = 1;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 0517CD3B
					/// @DnDParent : 1A616355
					/// @DnDArgument : "script" "removeitem"
					/// @DnDArgument : "arg" ""AK-47",1"
					/// @DnDSaveInfo : "script" "removeitem"
					script_execute(removeitem, "AK-47",1);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 3B823414
					/// @DnDParent : 1A616355
					/// @DnDArgument : "script" "additem"
					/// @DnDArgument : "arg" ""Anti Material Rifle",1"
					/// @DnDSaveInfo : "script" "additem"
					script_execute(additem, "Anti Material Rifle",1);
				
					/// @DnDAction : YoYo Games.Rooms.Next_Room
					/// @DnDVersion : 1
					/// @DnDHash : 686876CB
					/// @DnDParent : 1A616355
					room_goto_next();}}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 352E91FF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone4"
if(room == r_zone4){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 170A3A57
	/// @DnDParent : 352E91FF
	/// @DnDArgument : "var" "global.gatorAlive"
	/// @DnDArgument : "value" "false"
	if(global.gatorAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 076E15A5
		/// @DnDParent : 170A3A57
		/// @DnDArgument : "var" "global.turtleAlive"
		/// @DnDArgument : "value" "false"
		if(global.turtleAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FB7903E
			/// @DnDParent : 076E15A5
			/// @DnDArgument : "var" "global.nutriaAlive"
			/// @DnDArgument : "value" "false"
			if(global.nutriaAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 64090C5C
				/// @DnDParent : 4FB7903E
				/// @DnDArgument : "var" "global.fishAlive"
				/// @DnDArgument : "value" "false"
				if(global.fishAlive == false){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4ED22679
					/// @DnDInput : 2
					/// @DnDParent : 64090C5C
					/// @DnDArgument : "expr" "5"
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "var" "global.stage"
					/// @DnDArgument : "var_1" "hasRan"
					global.stage = 5;
					hasRan = 1;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 3CEE2684
					/// @DnDParent : 64090C5C
					/// @DnDArgument : "script" "removeitem"
					/// @DnDArgument : "arg" ""Anti Material Rifle",1"
					/// @DnDSaveInfo : "script" "removeitem"
					script_execute(removeitem, "Anti Material Rifle",1);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 6E2640FD
					/// @DnDParent : 64090C5C
					/// @DnDArgument : "script" "additem"
					/// @DnDArgument : "arg" ""Rocket Launcher",1"
					/// @DnDSaveInfo : "script" "additem"
					script_execute(additem, "Rocket Launcher",1);
				
					/// @DnDAction : YoYo Games.Rooms.Next_Room
					/// @DnDVersion : 1
					/// @DnDHash : 4ADCFA8A
					/// @DnDParent : 64090C5C
					room_goto_next();}}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 123B0999
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_zone5"
if(room == r_zone5){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 265E073B
	/// @DnDParent : 123B0999
	/// @DnDArgument : "var" "global.jagAlive"
	/// @DnDArgument : "value" "false"
	if(global.jagAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65A8E1CE
		/// @DnDParent : 265E073B
		/// @DnDArgument : "var" "global.snakeAlive"
		/// @DnDArgument : "value" "false"
		if(global.snakeAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07DBA554
			/// @DnDParent : 65A8E1CE
			/// @DnDArgument : "var" "global.capyAlive"
			/// @DnDArgument : "value" "false"
			if(global.capyAlive == false){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 11EA0617
				/// @DnDParent : 07DBA554
				/// @DnDArgument : "var" "global.okapiAlive"
				/// @DnDArgument : "value" "false"
				if(global.okapiAlive == false){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 046E1D3F
					/// @DnDInput : 2
					/// @DnDParent : 11EA0617
					/// @DnDArgument : "expr" "6"
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "var" "global.stage"
					/// @DnDArgument : "var_1" "hasRan"
					global.stage = 6;
					hasRan = 1;
				
					/// @DnDAction : YoYo Games.Rooms.Next_Room
					/// @DnDVersion : 1
					/// @DnDHash : 43BE42AC
					/// @DnDParent : 11EA0617
					room_goto_next();}}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A6BD727
/// @DnDArgument : "var" "hasRan"
if(hasRan == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E70C7B2
	/// @DnDParent : 2A6BD727
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.noRide"
	global.noRide = 1;}