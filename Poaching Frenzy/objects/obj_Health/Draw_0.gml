/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 075445A3
/// @DnDComment : does not draw health while in a battle room
/// @DnDArgument : "expr" "array_contains(obj_inventory.battle_rooms,room)"
/// @DnDArgument : "not" "1"
if(!(array_contains(obj_inventory.battle_rooms,room))){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47612339
	/// @DnDParent : 075445A3
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "r_endgame"
	if(!(room == r_endgame)){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
		/// @DnDVersion : 1
		/// @DnDHash : 34788069
		/// @DnDParent : 47612339
		draw_self();
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 4C58867E
		/// @DnDParent : 47612339
		/// @DnDArgument : "code" "//make sure health draws correctly$(13_10)draw_set_alpha(1);$(13_10)draw_set_font(fnt_health);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)draw_set_color(c_white);"
		//make sure health draws correctly
		draw_set_alpha(1);
		draw_set_font(fnt_health);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1BF73196
		/// @DnDParent : 47612339
		/// @DnDArgument : "x" "82"
		/// @DnDArgument : "y" "9"
		/// @DnDArgument : "caption" ""Vril: ""
		/// @DnDArgument : "var" "global.chudHealth"
		draw_text(82, 9, string("Vril: ") + string(global.chudHealth));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
		/// @DnDVersion : 1
		/// @DnDHash : 7083B738
		/// @DnDParent : 47612339
		/// @DnDArgument : "x1" "82"
		/// @DnDArgument : "y1" "72"
		/// @DnDArgument : "x2" "360"
		/// @DnDArgument : "y2" "102"
		/// @DnDArgument : "value" "global.chudHealth"
		/// @DnDArgument : "backcol" "$FFAAACFF"
		/// @DnDArgument : "barcol" "$FF2121FF"
		/// @DnDArgument : "mincol" "$FF000000"
		/// @DnDArgument : "maxcol" "$FF0000FF"
		draw_healthbar(82, 72, 360, 102, global.chudHealth, $FFAAACFF & $FFFFFF, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FFAAACFF>>24) != 0), (($FF2121FF>>24) != 0));}}