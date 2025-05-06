/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 05265601
/// @DnDArgument : "code" "//Creating variables$(13_10)$(13_10)// Define bar properties$(13_10)bar_width = 408; // Width of the QTE bar$(13_10)bar_height = 122; // Height of the QTE bar$(13_10)target_width = 75; // Width of the "success" zone$(13_10)arrow_speed = 5; // Speed of the arrow movement$(13_10)$(13_10)// Calculate positions $(13_10)bar_x = room_width / 2 - bar_width / 2;$(13_10)bar_y = room_height / 2 - bar_height / 2;$(13_10)$(13_10)// Calculate target zone position$(13_10)target_x = bar_x + (bar_width - target_width) / 2;$(13_10)$(13_10)$(13_10)//QTE can turn on and off$(13_10)qte_active = false;$(13_10)$(13_10)//Accessing the arrow$(13_10)arrow_instance = noone;"
//Creating variables

// Define bar properties
bar_width = 408; // Width of the QTE bar
bar_height = 122; // Height of the QTE bar
target_width = 75; // Width of the "success" zone
arrow_speed = 5; // Speed of the arrow movement

// Calculate positions 
bar_x = room_width / 2 - bar_width / 2;
bar_y = room_height / 2 - bar_height / 2;

// Calculate target zone position
target_x = bar_x + (bar_width - target_width) / 2;


//QTE can turn on and off
qte_active = false;

//Accessing the arrow
arrow_instance = noone;