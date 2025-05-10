/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 20751929
draw_self();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A6AB105
/// @DnDArgument : "code" "///@description Draw Shop$(13_10)$(13_10)draw_set_color(c_black);$(13_10)$(13_10)$(13_10)if (!shopOpen) exit;$(13_10)$(13_10)//Set Shop Attributes$(13_10)draw_set_color(c_black);$(13_10)	draw_set_alpha(0.5);$(13_10)		draw_rectangle(0, 0, guiWidth, guiHeight, 0);$(13_10)	draw_set_alpha(0.8);$(13_10)		draw_rectangle(menuMargin, 0, menuMargin + menuWidth, guiHeight, 0);$(13_10)	draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)//Draw Menu Items$(13_10)for (var i = 0; i < itemCount; i ++) {$(13_10)	$(13_10)	//Get Item$(13_10)	var arr = items[i];$(13_10)	var item = arr[0];$(13_10)	$(13_10)	//Set Position$(13_10)	var _x = menuMargin + menuWidth/2;$(13_10)	var _y = (guiHeight/2) + (i - selected) * 48;$(13_10)	$(13_10)	//Set Scale$(13_10)	var s = 1;$(13_10)	if (i == selected) item = "> " + item + " <";$(13_10)	$(13_10)	//Draw Item$(13_10)	draw_set_halign(fa_center);$(13_10)		draw_set_valign(fa_middle);$(13_10)			draw_text_transformed(_x, _y, item, s, s, 0);$(13_10)		draw_set_valign(fa_top);$(13_10)	draw_set_halign(fa_left);$(13_10)	$(13_10)}$(13_10)$(13_10)//Get Preview Data$(13_10)var arr = items[selected];$(13_10)var item = arr[0];$(13_10)var value = arr[1];$(13_10)$(13_10)//Set Position$(13_10)var _x = (menuMargin + menuWidth) + previewWidth/2;$(13_10)var _y = (guiHeight/2);$(13_10)$(13_10)//Draw Preview Sprite$(13_10)var spr = asset_get_index("spr_" + item);$(13_10)$(13_10)if (sprite_exists(spr)) {$(13_10)	$(13_10)	var s = 2;$(13_10)	draw_sprite_ext(spr, 0, _x, _y, s, s, 0, -1, 1);$(13_10)	$(13_10)}$(13_10)$(13_10)draw_set_color(c_yellow);$(13_10)draw_set_valign(fa_bottom);$(13_10)	draw_text(menuMargin +menuWidth + 4, guiHeight/14, "Money: $" + string(global.money));$(13_10)	$(13_10)//Draw Description$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)$(13_10)$(13_10)//Draw Value$(13_10)draw_set_valign(fa_bottom);$(13_10)	draw_text(menuMargin +menuWidth + 4, guiHeight - 4, "Value: $" + string(value));$(13_10)	$(13_10)	draw_set_halign(fa_right);$(13_10)		draw_text(guiWidth - 4, guiHeight - 4, "Press Space to sell " + string(item));$(13_10)	draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)$(13_10)"
///@description Draw Shop

draw_set_color(c_black);


if (!shopOpen) exit;

//Set Shop Attributes
draw_set_color(c_black);
	draw_set_alpha(0.5);
		draw_rectangle(0, 0, guiWidth, guiHeight, 0);
	draw_set_alpha(0.8);
		draw_rectangle(menuMargin, 0, menuMargin + menuWidth, guiHeight, 0);
	draw_set_alpha(1);
draw_set_color(c_white);

//Draw Menu Items
for (var i = 0; i < itemCount; i ++) {
	
	//Get Item
	var arr = items[i];
	var item = arr[0];
	
	//Set Position
	var _x = menuMargin + menuWidth/2;
	var _y = (guiHeight/2) + (i - selected) * 48;
	
	//Set Scale
	var s = 1;
	if (i == selected) item = "> " + item + " <";
	
	//Draw Item
	draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
			draw_text_transformed(_x, _y, item, s, s, 0);
		draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
}

//Get Preview Data
var arr = items[selected];
var item = arr[0];
var value = arr[1];

//Set Position
var _x = (menuMargin + menuWidth) + previewWidth/2;
var _y = (guiHeight/2);

//Draw Preview Sprite
var spr = asset_get_index("spr_" + item);

if (sprite_exists(spr)) {
	
	var s = 2;
	draw_sprite_ext(spr, 0, _x, _y, s, s, 0, -1, 1);
	
}

draw_set_color(c_yellow);
draw_set_valign(fa_bottom);
	draw_text(menuMargin +menuWidth + 4, guiHeight/14, "Money: $" + string(global.money));
	
//Draw Description
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


//Draw Value
draw_set_valign(fa_bottom);
	draw_text(menuMargin +menuWidth + 4, guiHeight - 4, "Value: $" + string(value));
	
	draw_set_halign(fa_right);
		draw_text(guiWidth - 4, guiHeight - 4, "Press Space to sell " + string(item));
	draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5DE2F84F
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// In the Draw Event$(13_10)//The second half moves to the right column.$(13_10)//spacingX controls how far apart the columns are.$(13_10)// Starting positions$(13_10)var startX = 50;$(13_10)var startY = 50;$(13_10)var spacingY = 20;  // Space between each animal vertically$(13_10)var spacingX = 300; // Space between the two columns$(13_10)$(13_10)var halfList = ceil(ds_list_size(storeItems) / 2); // Halfway point$(13_10)$(13_10)for (var i = 0; i < ds_list_size(storeItems); i++) {$(13_10)    var column = 0;$(13_10)    var row = i;$(13_10)    $(13_10)    if (i >= halfList) {$(13_10)        column = 1;$(13_10)        row = i - halfList;$(13_10)    }$(13_10)    $(13_10)    var drawX = startX + (column * spacingX);$(13_10)    var drawY = startY + (row * spacingY);$(13_10)    $(13_10)    var animalName = storeItems[| i];$(13_10)    draw_text(drawX, drawY, animalName);$(13_10)}$(13_10)$(13_10)$(13_10)///startX and startY are where the first name will appear.$(13_10)$(13_10)//spacing controls the vertical space between each animal.$(13_10)$(13_10)//ds_list_size(storeItems) gets how many animals are in the list.$(13_10)$(13_10)//storeItems[| i] reads the i-th animal name.$(13_10)$(13_10)//draw_text(x, y, text) draws each name on the screen.$(13_10)$(13_10)///It splits the list in half (halfList).$(13_10)$(13_10)//The first half draws on the left column."