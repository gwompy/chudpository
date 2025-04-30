/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20294316
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_inv"
if(room == r_inv){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 26315807
	/// @DnDParent : 20294316
	/// @DnDArgument : "code" "var _y = 0; // Starting Y position$(13_10)var _x = 1500; // Starting X position$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_inv);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)draw_text(_x, _y, "My Pockets Are Holding:");$(13_10)_y += 200; // Spacing$(13_10)$(13_10)// Loop through the inventory$(13_10)for (var i = 0; i < ds_list_size(inventory); i++) {$(13_10)    var _item = ds_list_find_value(inventory, i); // Fixed DS list access$(13_10)    draw_text(_x, _y, _item.name + " x" + string(_item.quantity));$(13_10)    _y += 200; // Spacing between items$(13_10)}$(13_10)$(13_10)// Handle empty inventory$(13_10)if (ds_list_size(inventory) < 1) {$(13_10)    draw_text(_x, _y, "Nothing!");$(13_10)}$(13_10)"
	var _y = 0; // Starting Y position
	var _x = 1500; // Starting X position
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fnt_inv);
	draw_set_halign(fa_left);
	
	draw_text(_x, _y, "My Pockets Are Holding:");
	_y += 200; // Spacing
	
	// Loop through the inventory
	for (var i = 0; i < ds_list_size(inventory); i++) {
	    var _item = ds_list_find_value(inventory, i); // Fixed DS list access
	    draw_text(_x, _y, _item.name + " x" + string(_item.quantity));
	    _y += 200; // Spacing between items
	}
	
	// Handle empty inventory
	if (ds_list_size(inventory) < 1) {
	    draw_text(_x, _y, "Nothing!");
	}}