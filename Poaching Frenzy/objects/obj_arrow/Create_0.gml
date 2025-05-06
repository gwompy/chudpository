/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64741345
/// @DnDArgument : "code" "//Create variables$(13_10)$(13_10)//Get reference to the QTE bar$(13_10)bar = obj_quicktimebar;$(13_10)$(13_10)//Initialize arrow position and movement$(13_10)x = bar.bar_x; //Start at the left edge of the bar$(13_10)y = bar.bar_y+100;$(13_10)direction = 1; //1 = right, -1 = left$(13_10)"
//Create variables

//Get reference to the QTE bar
bar = obj_quicktimebar;

//Initialize arrow position and movement
x = bar.bar_x; //Start at the left edge of the bar
y = bar.bar_y+100;
direction = 1; //1 = right, -1 = left