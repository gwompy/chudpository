/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 34788069
draw_self();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C58867E
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
/// @DnDArgument : "x" "82"
/// @DnDArgument : "y" "9"
/// @DnDArgument : "caption" ""Vril: ""
/// @DnDArgument : "var" "global.chudHealth"
draw_text(82, 9, string("Vril: ") + string(global.chudHealth));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 7083B738
/// @DnDArgument : "x1" "82"
/// @DnDArgument : "y1" "72"
/// @DnDArgument : "x2" "360"
/// @DnDArgument : "y2" "102"
/// @DnDArgument : "value" "global.chudHealth"
/// @DnDArgument : "backcol" "$FFAAACFF"
/// @DnDArgument : "barcol" "$FF2121FF"
/// @DnDArgument : "mincol" "$FF000000"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(82, 72, 360, 102, global.chudHealth, $FFAAACFF & $FFFFFF, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FFAAACFF>>24) != 0), (($FF2121FF>>24) != 0));