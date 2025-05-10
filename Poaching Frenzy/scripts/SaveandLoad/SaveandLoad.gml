/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69E82689
/// @DnDArgument : "code" "/// @description Save and Load$(13_10)// AI helped with trouble shooting\$(13_10)// Credit for this Goes to https://www.youtube.com/watch?v=i6aEyrRIzTY$(13_10)global.game_data = $(13_10){$(13_10)	room_data: {}	$(13_10)};	$(13_10)	$(13_10)	$(13_10)function save_game()$(13_10){$(13_10)$(13_10)	$(13_10)$(13_10)	$(13_10)$(13_10)	save_room();$(13_10)	$(13_10)    var _string = json_stringify(global.game_data);$(13_10)    show_debug_message("Serialized save data: " + _string);$(13_10)$(13_10)    var _file = file_text_open_write("save.txt");$(13_10)$(13_10)    if (_file != -1)$(13_10)    {$(13_10)        file_text_write_string(_file, _string);$(13_10)        file_text_close(_file);$(13_10)        show_debug_message("Save successful!");$(13_10)    }$(13_10)    else$(13_10)    {$(13_10)        show_debug_message("Error: Could not open save file.");$(13_10)    }			$(13_10)}; $(13_10)function save_room()$(13_10){$(13_10)   var _array = [];$(13_10)$(13_10)	with( obj_inventory)$(13_10)	{$(13_10)		var _struct =$(13_10)		{$(13_10)			object: object_get_name(object_index),$(13_10)			x: x, $(13_10)			y: y,$(13_10)			image_index: image_index$(13_10)		};$(13_10)		$(13_10)		array_push(_array, _struct);$(13_10)	}$(13_10)$(13_10)$(13_10)	with( obj_gamerun)$(13_10)	{$(13_10)		var _struct =$(13_10)		{$(13_10)			object: object_get_name(object_index),$(13_10)			x: x, $(13_10)			y: y,$(13_10)			image_index: image_index,$(13_10)			image_blend: image_blend$(13_10)		};$(13_10)		$(13_10)		array_push(_array, _struct);$(13_10)	}$(13_10)	with( obj_chud)$(13_10)	{$(13_10)		var _struct =$(13_10)		{$(13_10)			object: object_get_name(object_index),$(13_10)			x: x, $(13_10)			y: y,$(13_10)			image_index: image_index$(13_10)		};$(13_10)		$(13_10)		array_push(_array, _struct);$(13_10)	}$(13_10)$(13_10)	with( obj_Money)$(13_10)	{$(13_10)		var _struct =$(13_10)		{$(13_10)			object: object_get_name(object_index),$(13_10)			x: x, $(13_10)			y: y,$(13_10)			image_index: image_index$(13_10)		};$(13_10)		$(13_10)		array_push(_array, _struct);$(13_10)	}$(13_10)	with( obj_next_stage)$(13_10)	{$(13_10)		var _struct =$(13_10)		{$(13_10)			object: object_get_name(object_index),$(13_10)			x: x, $(13_10)			y: y,$(13_10)			image_index: image_index$(13_10)		};$(13_10)		$(13_10)		array_push(_array, _struct);$(13_10)	}$(13_10)	struct_set(global.game_data.room_data, room_get_name(room), _array);$(13_10)}$(13_10)function load_game()$(13_10){$(13_10)   if(file_exists("save.txt"))$(13_10)	{$(13_10)		var _file = file_text_open_read( "save.txt");$(13_10)		$(13_10)		var _json = file_text_read_string( _file);$(13_10)		$(13_10)		global.game_data = json_parse( _json);$(13_10)		$(13_10)		load_room();$(13_10)		$(13_10)		file_text_close( _file); $(13_10)	}$(13_10)$(13_10)};$(13_10)function load_room()$(13_10){$(13_10)	var _array = struct_get(global.game_data.room_data, room_get_name(room)); $(13_10)	$(13_10)	if( _array != undefined)$(13_10)	{$(13_10)		// Needed to load things properly$(13_10)		instance_destroy(obj_Money);$(13_10)		instance_destroy(obj_chud);$(13_10)		instance_destroy(obj_inventory);$(13_10)		//instance_destroy(obj_Money);$(13_10)		//instance_destroy(obj_Money);$(13_10)		//instance_destroy(obj_Money);$(13_10)		$(13_10)		for(var i = 0; i < array_length( _array); i += 1)$(13_10)		{$(13_10)			var _struct = _array[i];$(13_10)			$(13_10)			instance_create_layer( _struct.x, _struct.y, "Instances", asset_get_index(_struct.object), _struct);$(13_10)		}$(13_10)			$(13_10)	}$(13_10)$(13_10)}"
/// @description Save and Load
// AI helped with trouble shooting\
// Credit for this Goes to https://www.youtube.com/watch?v=i6aEyrRIzTY
global.game_data = 
{
	room_data: {}	
};	
	
	
function save_game()
{

	

	

	save_room();
	
    var _string = json_stringify(global.game_data);
    show_debug_message("Serialized save data: " + _string);

    var _file = file_text_open_write("save.txt");

    if (_file != -1)
    {
        file_text_write_string(_file, _string);
        file_text_close(_file);
        show_debug_message("Save successful!");
    }
    else
    {
        show_debug_message("Error: Could not open save file.");
    }			
}; 
function save_room()
{
   var _array = [];

	with( obj_inventory)
	{
		var _struct =
		{
			object: object_get_name(object_index),
			x: x, 
			y: y,
			image_index: image_index
		};
		
		array_push(_array, _struct);
	}


	with( obj_gamerun)
	{
		var _struct =
		{
			object: object_get_name(object_index),
			x: x, 
			y: y,
			image_index: image_index,
			image_blend: image_blend
		};
		
		array_push(_array, _struct);
	}
	with( obj_chud)
	{
		var _struct =
		{
			object: object_get_name(object_index),
			x: x, 
			y: y,
			image_index: image_index
		};
		
		array_push(_array, _struct);
	}

	with( obj_Money)
	{
		var _struct =
		{
			object: object_get_name(object_index),
			x: x, 
			y: y,
			image_index: image_index
		};
		
		array_push(_array, _struct);
	}
	with( obj_next_stage)
	{
		var _struct =
		{
			object: object_get_name(object_index),
			x: x, 
			y: y,
			image_index: image_index
		};
		
		array_push(_array, _struct);
	}
	struct_set(global.game_data.room_data, room_get_name(room), _array);
}
function load_game()
{
   if(file_exists("save.txt"))
	{
		var _file = file_text_open_read( "save.txt");
		
		var _json = file_text_read_string( _file);
		
		global.game_data = json_parse( _json);
		
		load_room();
		
		file_text_close( _file); 
	}

};
function load_room()
{
	var _array = struct_get(global.game_data.room_data, room_get_name(room)); 
	
	if( _array != undefined)
	{
		// Needed to load things properly
		instance_destroy(obj_Money);
		instance_destroy(obj_chud);
		instance_destroy(obj_inventory);
		//instance_destroy(obj_Money);
		//instance_destroy(obj_Money);
		//instance_destroy(obj_Money);
		
		for(var i = 0; i < array_length( _array); i += 1)
		{
			var _struct = _array[i];
			
			instance_create_layer( _struct.x, _struct.y, "Instances", asset_get_index(_struct.object), _struct);
		}
			
	}

}