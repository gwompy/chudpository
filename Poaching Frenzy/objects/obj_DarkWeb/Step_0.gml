/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61AFC0D2
/// @DnDArgument : "code" "/// @description How Shop Works $(13_10)//Control the Shop$(13_10)$(13_10)//Open Shop Method$(13_10)if (keyboard_check_pressed(vk_colon)) {$(13_10)$(13_10)    shopOpen = true;$(13_10)    global.shop = true;$(13_10)    //instance activate$(13_10)} else if (shopOpen && keyboard_check_pressed(vk_colon)) {$(13_10)$(13_10)    shopOpen = false;$(13_10)    global.shop = false;$(13_10)    //instance deactivate$(13_10)}$(13_10)$(13_10)// Shop is open$(13_10)if (shopOpen) {$(13_10)$(13_10)    if (keyboard_check_pressed(vk_down)){$(13_10)$(13_10)        selected ++ ;$(13_10)        if (selected == itemCount) selected = 0;$(13_10)$(13_10)    }$(13_10)$(13_10)    if (keyboard_check_pressed(vk_up)) {$(13_10)$(13_10)        selected -- ;$(13_10)        if (selected < 0) selected = itemCount - 1;$(13_10)$(13_10)    }$(13_10)     // Sell an Item$(13_10)    var arr = items[selected]$(13_10)    var item = arr[0];$(13_10)    var value = arr[1];$(13_10)    if (keyboard_check_pressed(vk_period)){$(13_10)        // Remove one instance of item from inventory$(13_10)        ds_list_delete(global.inventory, ds_list_find_index(global.inventory, item));$(13_10)        global.money += value;$(13_10)    }$(13_10)$(13_10)$(13_10)}$(13_10)"
/// @description How Shop Works 
//Control the Shop

//Open Shop Method
if (keyboard_check_pressed(vk_colon)) {

    shopOpen = true;
    global.shop = true;
    //instance activate
} else if (shopOpen && keyboard_check_pressed(vk_colon)) {

    shopOpen = false;
    global.shop = false;
    //instance deactivate
}

// Shop is open
if (shopOpen) {

    if (keyboard_check_pressed(vk_down)){

        selected ++ ;
        if (selected == itemCount) selected = 0;

    }

    if (keyboard_check_pressed(vk_up)) {

        selected -- ;
        if (selected < 0) selected = itemCount - 1;

    }
     // Sell an Item
    var arr = items[selected]
    var item = arr[0];
    var value = arr[1];
    if (keyboard_check_pressed(vk_period)){
        // Remove one instance of item from inventory
        ds_list_delete(global.inventory, ds_list_find_index(global.inventory, item));
        global.money += value;
    }


}