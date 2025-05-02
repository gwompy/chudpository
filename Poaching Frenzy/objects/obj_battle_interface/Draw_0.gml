/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7BEF83F5
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 2AB70133
/// @DnDArgument : "x1" "225"
/// @DnDArgument : "y1" "500"
/// @DnDArgument : "x2" "550"
/// @DnDArgument : "y2" "520"
/// @DnDArgument : "value" "global.chudHealth"
/// @DnDArgument : "backcol" "$FFAAACFF"
/// @DnDArgument : "barcol" "$FF2121FF"
/// @DnDArgument : "mincol" "$FF000000"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(225, 500, 550, 520, global.chudHealth, $FFAAACFF & $FFFFFF, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FFAAACFF>>24) != 0), (($FF2121FF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 48B5DB77
/// @DnDArgument : "x1" "850"
/// @DnDArgument : "y1" "250"
/// @DnDArgument : "x2" "1200"
/// @DnDArgument : "y2" "270"
/// @DnDArgument : "direction" "1"
/// @DnDArgument : "value" "enemHealth"
/// @DnDArgument : "backcol" "$FFAAACFF"
/// @DnDArgument : "barcol" "$FF2121FF"
/// @DnDArgument : "mincol" "$FF000000"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(850, 250, 1200, 270, enemHealth, $FFAAACFF & $FFFFFF, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, 1, (($FFAAACFF>>24) != 0), (($FF2121FF>>24) != 0));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CD986E8
/// @DnDArgument : "var" "newAttack"
/// @DnDArgument : "value" "1"
if(newAttack == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 586FDF4D
	/// @DnDParent : 3CD986E8
	/// @DnDArgument : "code" "// Idea by AI$(13_10)$(13_10)$(13_10)// Draw the meleeDamage value at the calculated path position$(13_10)draw_set_color(c_maroon);$(13_10)draw_set_halign(fa_center); $(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(meleeDamage_drawX, meleeDamage_drawY, string(meleeDamage));$(13_10)"
	// Idea by AI
	
	
	// Draw the meleeDamage value at the calculated path position
	draw_set_color(c_maroon);
	draw_set_halign(fa_center); 
	draw_set_valign(fa_middle);
	draw_text(meleeDamage_drawX, meleeDamage_drawY, string(meleeDamage));}