/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C85F445
/// @DnDArgument : "code" "/// @desc make the text normal again$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_demo);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);"
/// @desc make the text normal again

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_demo);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 649BD2B6
/// @DnDArgument : "x" "60"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""HALT!!!!!!!! \n This is the end of the demo for Poaching Frenzy. \n Stay tuned for the full release in 2027, chuds!!!""
draw_text(60, 30, string("HALT!!!!!!!! \n This is the end of the demo for Poaching Frenzy. \n Stay tuned for the full release in 2027, chuds!!!") + "");