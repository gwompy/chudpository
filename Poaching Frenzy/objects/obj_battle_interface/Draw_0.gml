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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7AA0B08C
/// @DnDArgument : "var" "enemAttack"
/// @DnDArgument : "value" "1"
if(enemAttack == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 43E1419A
	/// @DnDParent : 7AA0B08C
	/// @DnDArgument : "code" "//Draw the $(13_10)draw_set_color(c_maroon);$(13_10)draw_set_halign(fa_center); $(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(enemDamage_drawX, enemDamage_drawY, string(enemDamage));"
	//Draw the 
	draw_set_color(c_maroon);
	draw_set_halign(fa_center); 
	draw_set_valign(fa_middle);
	draw_text(enemDamage_drawX, enemDamage_drawY, string(enemDamage));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69566BE7
/// @DnDArgument : "var" "showInv"
/// @DnDArgument : "value" "1"
if(showInv == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1C91E0AC
	/// @DnDParent : 69566BE7
	/// @DnDArgument : "code" "//check if consumables are in inventory$(13_10)$(13_10)$(13_10)for (var i = 0; i < array_length(obj_inventory.inventory); i++)$(13_10){$(13_10)    var _item = obj_inventory.inventory[i];$(13_10)        $(13_10) $(13_10)    if (array_contains(consumables, _item) != -1)$(13_10)    {$(13_10)        has_consumable = true;$(13_10)        break; $(13_10)    }$(13_10)}$(13_10)$(13_10)"
	//check if consumables are in inventory
	
	
	for (var i = 0; i < array_length(obj_inventory.inventory); i++)
	{
	    var _item = obj_inventory.inventory[i];
	        
	 
	    if (array_contains(consumables, _item) != -1)
	    {
	        has_consumable = true;
	        break; 
	    }
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D79109B
	/// @DnDParent : 69566BE7
	/// @DnDArgument : "var" "has_consumable"
	/// @DnDArgument : "value" "true"
	if(has_consumable == true){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 62862728
		/// @DnDParent : 7D79109B
		/// @DnDArgument : "code" "//draws the consumable items$(13_10)$(13_10)var _y = 570; // Starting Y position$(13_10)var _x = 50; // Starting X position$(13_10)$(13_10)$(13_10)// for spacing$(13_10)var count = 0;$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(fnt_battle);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)$(13_10)// Loop through inventory to find consumables$(13_10)for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)    var _item = ds_list_find_value(obj_inventory.inventory, i);$(13_10)	$(13_10)    // Check if item exists in consumables list$(13_10)    if (ds_list_find_index(consumables, _item.name) != -1) {$(13_10)        draw_text(_x, _y, _item.name + " x" + string(_item.quantity));$(13_10)		$(13_10)		// spacing scheme$(13_10)		if count < 3{$(13_10)			$(13_10)			_x += 20;$(13_10)		}$(13_10)		$(13_10)		else{$(13_10)			$(13_10)			count = 0;$(13_10)			_y += 120;$(13_10)			_x = 50;$(13_10)		}$(13_10)    }$(13_10)}$(13_10)$(13_10)// Always draw "Back" after items$(13_10)draw_text(_x, _y, "Back");"
		//draws the consumable items
		
		var _y = 570; // Starting Y position
		var _x = 50; // Starting X position
		
		
		// for spacing
		var count = 0;
		
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_set_font(fnt_battle);
		draw_set_halign(fa_left);
		
		
		// Loop through inventory to find consumables
		for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
		    var _item = ds_list_find_value(obj_inventory.inventory, i);
			
		    // Check if item exists in consumables list
		    if (ds_list_find_index(consumables, _item.name) != -1) {
		        draw_text(_x, _y, _item.name + " x" + string(_item.quantity));
				
				// spacing scheme
				if count < 3{
					
					_x += 20;
				}
				
				else{
					
					count = 0;
					_y += 120;
					_x = 50;
				}
		    }
		}
		
		// Always draw "Back" after items
		draw_text(_x, _y, "Back");}}