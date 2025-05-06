/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3838CF15
/// @DnDArgument : "code" "if (bar.qte_active) {$(13_10)    // Move the arrow left/right$(13_10)    x += bar.arrow_speed * direction;$(13_10)$(13_10)    // Reverse direction at bar edges$(13_10)    if (x <= bar.bar_x or x + sprite_width >= bar.bar_x + bar.bar_width) {$(13_10)        direction *= -1;$(13_10)    }$(13_10)}$(13_10)"
if (bar.qte_active) {
    // Move the arrow left/right
    x += bar.arrow_speed * direction;

    // Reverse direction at bar edges
    if (x <= bar.bar_x or x + sprite_width >= bar.bar_x + bar.bar_width) {
        direction *= -1;
    }
}