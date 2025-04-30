/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35488903
/// @DnDArgument : "code" "if (ds_list_find_index(global.inventory, "gun") != -1) {$(13_10)    show_debug_message("Item found!");$(13_10)} else {$(13_10)    audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);$(13_10)}"
if (ds_list_find_index(global.inventory, "gun") != -1) {
    show_debug_message("Item found!");
} else {
    audio_play_sound(snd_denied_action, 0, 0, 1.0, undefined, 1.0);
}