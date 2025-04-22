/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B5D1B3D
/// @DnDArgument : "code" "// Idea provided by AI$(13_10)// Takes 2 arguments. Item name and quantity to remove.$(13_10)$(13_10)function removeitem(_name, _quantity = 1) {$(13_10)    for(var i = 0; i < ds_list_size(inventory); i++) {$(13_10)        var _item = inventory[| i];$(13_10)        if (_item.name == _name) {$(13_10)            _item.quantity -= _quantity;$(13_10)            $(13_10)            // Remove entry if quantity drops to 0$(13_10)            if (_item.quantity <= 0) {$(13_10)                ds_list_delete(inventory, i);$(13_10)            }$(13_10)            return true;$(13_10)        }$(13_10)    }$(13_10)    return false; // Item not found$(13_10)}$(13_10)"
// Idea provided by AI
// Takes 2 arguments. Item name and quantity to remove.

function removeitem(_name, _quantity = 1) {
    for(var i = 0; i < ds_list_size(inventory); i++) {
        var _item = inventory[| i];
        if (_item.name == _name) {
            _item.quantity -= _quantity;
            
            // Remove entry if quantity drops to 0
            if (_item.quantity <= 0) {
                ds_list_delete(inventory, i);
            }
            return true;
        }
    }
    return false; // Item not found
}