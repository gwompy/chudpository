/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 76B77129
/// @DnDArgument : "code" "//Idea by AI$(13_10)$(13_10)function inventory_add(_name, _quantity = 1) {$(13_10)    // Check if item exists$(13_10)    for(var i = 0; i < ds_list_size(inventory); i++) {$(13_10)        var _item = inventory[| i];$(13_10)        if (_item.name == _name) {$(13_10)            _item.quantity += _quantity;$(13_10)            return;$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    // Add new item if not found$(13_10)    var _new_item = {$(13_10)        name: _name,$(13_10)        quantity: _quantity$(13_10)    };$(13_10)    ds_list_add(inventory, _new_item);$(13_10)}"
//Idea by AI

function inventory_add(_name, _quantity = 1) {
    // Check if item exists
    for(var i = 0; i < ds_list_size(inventory); i++) {
        var _item = inventory[| i];
        if (_item.name == _name) {
            _item.quantity += _quantity;
            return;
        }
    }
    
    // Add new item if not found
    var _new_item = {
        name: _name,
        quantity: _quantity
    };
    ds_list_add(inventory, _new_item);
}