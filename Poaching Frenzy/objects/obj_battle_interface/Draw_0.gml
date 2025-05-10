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
/// @DnDArgument : "value" "chudHealthpercentage"
/// @DnDArgument : "backcol" "$FFAAACFF"
/// @DnDArgument : "barcol" "$FF2121FF"
/// @DnDArgument : "mincol" "$FF000000"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(225, 500, 550, 520, chudHealthpercentage, $FFAAACFF & $FFFFFF, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FFAAACFF>>24) != 0), (($FF2121FF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 48B5DB77
/// @DnDArgument : "x1" "850"
/// @DnDArgument : "y1" "250"
/// @DnDArgument : "x2" "1200"
/// @DnDArgument : "y2" "270"
/// @DnDArgument : "direction" "1"
/// @DnDArgument : "value" "enemHealthpercentage"
/// @DnDArgument : "backcol" "$FFAAACFF"
/// @DnDArgument : "barcol" "$FF2121FF"
/// @DnDArgument : "mincol" "$FF000000"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(850, 250, 1200, 270, enemHealthpercentage, $FFAAACFF & $FFFFFF, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, 1, (($FFAAACFF>>24) != 0), (($FF2121FF>>24) != 0));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CD986E8
/// @DnDArgument : "var" "newAttack"
/// @DnDArgument : "value" "1"
if(newAttack == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 586FDF4D
	/// @DnDParent : 3CD986E8
	/// @DnDArgument : "code" "// Idea by AI$(13_10)$(13_10)$(13_10)// Draw the meleeDamage value at the calculated path position$(13_10)draw_set_color(c_maroon);$(13_10)draw_set_font(fnt_attack);$(13_10)draw_set_halign(fa_center); $(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(meleeDamage_drawX, meleeDamage_drawY, string(meleeDamage));$(13_10)"
	// Idea by AI
	
	
	// Draw the meleeDamage value at the calculated path position
	draw_set_color(c_maroon);
	draw_set_font(fnt_attack);
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
	/// @DnDArgument : "code" "//Draw the $(13_10)draw_set_color(c_maroon);$(13_10)draw_set_font(fnt_attack);$(13_10)draw_set_halign(fa_center); $(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(enemDamage_drawX, enemDamage_drawY, string(enemDamage));"
	//Draw the 
	draw_set_color(c_maroon);
	draw_set_font(fnt_attack);
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
	/// @DnDArgument : "code" "//check if consumables are in inventory$(13_10)$(13_10)for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)    var _item = obj_inventory.inventory[| i]; // Access ds_list element$(13_10)    if (array_contains(consumables, _item.name) != 0) { $(13_10)        has_consumable = true;$(13_10)        break;$(13_10)    }$(13_10)}$(13_10)"
	//check if consumables are in inventory
	
	for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
	    var _item = obj_inventory.inventory[| i]; // Access ds_list element
	    if (array_contains(consumables, _item.name) != 0) { 
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
		/// @DnDArgument : "code" "var _y = 570;$(13_10)var _x = 50;$(13_10)var count = 0;$(13_10)var current_consumable_index = 0;$(13_10)$(13_10)draw_set_alpha(1);$(13_10)draw_set_font(fnt_battle);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)//draw back button first$(13_10)draw_set_color(current_consumable_index == selected_index ? c_yellow : c_white);$(13_10)draw_text(_x, _y, "Back");$(13_10)$(13_10)current_consumable_index++; $(13_10)count++;$(13_10)_x += 400; $(13_10)$(13_10)// Draw Energy Drink in second position if it exists$(13_10)var energy_drawn = false;$(13_10)for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)    var _item = ds_list_find_value(obj_inventory.inventory, i);$(13_10)    if (_item.name == "Energy Drink") {$(13_10)        draw_set_color(current_consumable_index == selected_index ? c_yellow : c_white);$(13_10)        draw_text(_x, _y, _item.name + " x" + string(_item.quantity));$(13_10)        current_consumable_index++;$(13_10)        energy_drawn = true;$(13_10)$(13_10)        // Positioning$(13_10)        count++;$(13_10)        if (count < 3) {$(13_10)            _x += 400;$(13_10)        } else {$(13_10)            count = 0;$(13_10)            _y += 120;$(13_10)            _x = 50;$(13_10)        }$(13_10)        break; // Only draw one Energy Drink$(13_10)    }$(13_10)}$(13_10)$(13_10)//Draw consumables$(13_10)for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {$(13_10)    var _item = ds_list_find_value(obj_inventory.inventory, i);$(13_10)$(13_10)    // Skip Energy Drink if already drawn$(13_10)    if (energy_drawn && _item.name == "Energy Drink") continue;$(13_10)$(13_10)    draw_set_color(current_consumable_index == selected_index ? c_yellow : c_white);$(13_10)    draw_text(_x, _y, _item.name + " x" + string(_item.quantity));$(13_10)    current_consumable_index++;$(13_10)$(13_10)    // Positioning$(13_10)    count++;$(13_10)    if (count < 3) {$(13_10)        _x += 400;$(13_10)    } else {$(13_10)        count = 0;$(13_10)        _y += 120;$(13_10)        _x = 50;$(13_10)    }$(13_10)}$(13_10)$(13_10)// Reset color$(13_10)draw_set_color(c_white);$(13_10)"
		var _y = 570;
		var _x = 50;
		var count = 0;
		var current_consumable_index = 0;
		
		draw_set_alpha(1);
		draw_set_font(fnt_battle);
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		
		//draw back button first
		draw_set_color(current_consumable_index == selected_index ? c_yellow : c_white);
		draw_text(_x, _y, "Back");
		
		current_consumable_index++; 
		count++;
		_x += 400; 
		
		// Draw Energy Drink in second position if it exists
		var energy_drawn = false;
		for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
		    var _item = ds_list_find_value(obj_inventory.inventory, i);
		    if (_item.name == "Energy Drink") {
		        draw_set_color(current_consumable_index == selected_index ? c_yellow : c_white);
		        draw_text(_x, _y, _item.name + " x" + string(_item.quantity));
		        current_consumable_index++;
		        energy_drawn = true;
		
		        // Positioning
		        count++;
		        if (count < 3) {
		            _x += 400;
		        } else {
		            count = 0;
		            _y += 120;
		            _x = 50;
		        }
		        break; // Only draw one Energy Drink
		    }
		}
		
		//Draw consumables
		for (var i = 0; i < ds_list_size(obj_inventory.inventory); i++) {
		    var _item = ds_list_find_value(obj_inventory.inventory, i);
		
		    // Skip Energy Drink if already drawn
		    if (energy_drawn && _item.name == "Energy Drink") continue;
		
		    draw_set_color(current_consumable_index == selected_index ? c_yellow : c_white);
		    draw_text(_x, _y, _item.name + " x" + string(_item.quantity));
		    current_consumable_index++;
		
		    // Positioning
		    count++;
		    if (count < 3) {
		        _x += 400;
		    } else {
		        count = 0;
		        _y += 120;
		        _x = 50;
		    }
		}
		
		// Reset color
		draw_set_color(c_white);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7BD3E16A
	/// @DnDParent : 69566BE7
	else{	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 290C4417
		/// @DnDParent : 7BD3E16A
		/// @DnDArgument : "code" "//making sure value draws properly$(13_10)draw_set_alpha(1);$(13_10)draw_set_font(fnt_battle);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_color(c_white);"
		//making sure value draws properly
		draw_set_alpha(1);
		draw_set_font(fnt_battle);
		draw_set_halign(fa_left);
		draw_set_color(c_white);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 73386138
		/// @DnDParent : 7BD3E16A
		/// @DnDArgument : "x" "50"
		/// @DnDArgument : "y" "570"
		/// @DnDArgument : "caption" ""You have no usable items!""
		draw_text(50, 570, string("You have no usable items!") + "");
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67C55A3E
		/// @DnDComment : prevent alarm from$(13_10)being reset over and over
		/// @DnDParent : 7BD3E16A
		/// @DnDArgument : "var" "alarm_active"
		/// @DnDArgument : "value" "false"
		if(alarm_active == false){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 725A93EB
			/// @DnDParent : 67C55A3E
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 30);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2DF1BF05
			/// @DnDParent : 67C55A3E
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "alarm_active"
			alarm_active = true;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B9CC40B
/// @DnDArgument : "var" "runFail"
/// @DnDArgument : "value" "1"
if(runFail == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3D021E3C
	/// @DnDParent : 4B9CC40B
	/// @DnDArgument : "code" "//making sure value draws properly$(13_10)draw_set_alpha(1);$(13_10)draw_set_font(fnt_battle);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_color(c_white);$(13_10)"
	//making sure value draws properly
	draw_set_alpha(1);
	draw_set_font(fnt_battle);
	draw_set_halign(fa_left);
	draw_set_color(c_white);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 51F508CC
	/// @DnDParent : 4B9CC40B
	/// @DnDArgument : "x" "50"
	/// @DnDArgument : "y" "570"
	/// @DnDArgument : "caption" ""Your running has failed!""
	draw_text(50, 570, string("Your running has failed!") + "");

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16929C66
	/// @DnDComment : prevent alarm from$(13_10)being reset over and over
	/// @DnDParent : 4B9CC40B
	/// @DnDArgument : "var" "alarm_active"
	/// @DnDArgument : "value" "false"
	if(alarm_active == false){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 3E3E5EBD
		/// @DnDParent : 16929C66
		alarm_set(0, 30);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 791D14A9
		/// @DnDParent : 16929C66
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "alarm_active"
		alarm_active = true;}}