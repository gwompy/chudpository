/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26315807
/// @DnDArgument : "code" "// Idea by AI$(13_10)$(13_10)// Draw Event$(13_10)var _y = 0; // Starting Y position$(13_10)var _x = 0; // X position$(13_10)$(13_10)draw_set_color(c_white);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)for(var i = 0; i < ds_list_size(inventory); i++) {$(13_10)    var _item = inventory[| i];$(13_10)    draw_text(_x, _y, _item.name + " x" + string(_item.quantity));$(13_10)    _y += 24; // Spacing between items$(13_10)}"
// Idea by AI

// Draw Event
var _y = 0; // Starting Y position
var _x = 0; // X position

draw_set_color(c_white);
draw_set_halign(fa_left);

for(var i = 0; i < ds_list_size(inventory); i++) {
    var _item = inventory[| i];
    draw_text(_x, _y, _item.name + " x" + string(_item.quantity));
    _y += 24; // Spacing between items
}