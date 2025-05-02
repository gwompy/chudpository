/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F7AFEAD
/// @DnDArgument : "code" "//Idea by AI$(13_10)$(13_10)$(13_10)// Check for M key press to reset progress$(13_10)if (keyboard_check_pressed(ord("M"))) {$(13_10)    meleeDamage_pathProgress = 0; // Reset to start of path$(13_10)}$(13_10)$(13_10)$(13_10)// Update path progress$(13_10)meleeDamage_pathProgress += meleeDamage_pathSpeed;$(13_10)if (meleeDamage_pathProgress >= 1) {$(13_10)    meleeDamage_pathProgress = 0; $(13_10)	newAttack = 0 // hides the bouncy number$(13_10)}$(13_10)$(13_10)// Get the current X/Y position on the path$(13_10)meleeDamage_drawX = path_get_x(p_dmg, meleeDamage_pathProgress);$(13_10)meleeDamage_drawY = path_get_y(p_dmg, meleeDamage_pathProgress);$(13_10)"
//Idea by AI


// Check for M key press to reset progress
if (keyboard_check_pressed(ord("M"))) {
    meleeDamage_pathProgress = 0; // Reset to start of path
}


// Update path progress
meleeDamage_pathProgress += meleeDamage_pathSpeed;
if (meleeDamage_pathProgress >= 1) {
    meleeDamage_pathProgress = 0; 
	newAttack = 0 // hides the bouncy number
}

// Get the current X/Y position on the path
meleeDamage_drawX = path_get_x(p_dmg, meleeDamage_pathProgress);
meleeDamage_drawY = path_get_y(p_dmg, meleeDamage_pathProgress);