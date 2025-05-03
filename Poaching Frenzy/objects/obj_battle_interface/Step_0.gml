/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F7AFEAD
/// @DnDArgument : "code" "//Idea by AI$(13_10)$(13_10)$(13_10)// Check for M key press to reset progress$(13_10)if (keyboard_check_pressed(ord("M"))) {$(13_10)    meleeDamage_pathProgress = 0; // Reset to start of path$(13_10)}$(13_10)$(13_10)// reset enemy path progress$(13_10)if (enemStart == 1) {$(13_10)    enemDamage_pathProgress = 0; // Reset to start of path$(13_10)	enemStart = 0;$(13_10)}$(13_10)$(13_10)$(13_10)// Update path progress$(13_10)meleeDamage_pathProgress += meleeDamage_pathSpeed;$(13_10)if (meleeDamage_pathProgress >= 1) {$(13_10)    meleeDamage_pathProgress = 0; $(13_10)	newAttack = 0 // hides the bouncy number$(13_10)}$(13_10)$(13_10)$(13_10)// Update path progress$(13_10)enemDamage_pathProgress += enemDamage_pathSpeed;$(13_10)if (enemDamage_pathProgress >= 1) {$(13_10)    enemDamage_pathProgress = 0; $(13_10)	enemAttack = 0 // hides the bouncy number$(13_10)	cooldown = 0 //resets the cooldown$(13_10)}$(13_10)$(13_10)$(13_10)// Get the current X/Y position on the path$(13_10)meleeDamage_drawX = path_get_x(p_dmg, meleeDamage_pathProgress);$(13_10)meleeDamage_drawY = path_get_y(p_dmg, meleeDamage_pathProgress);$(13_10)$(13_10)enemDamage_drawX = path_get_x(p_enem, enemDamage_pathProgress);$(13_10)enemDamage_drawY = path_get_y(p_enem, enemDamage_pathProgress);$(13_10)$(13_10)"
//Idea by AI


// Check for M key press to reset progress
if (keyboard_check_pressed(ord("M"))) {
    meleeDamage_pathProgress = 0; // Reset to start of path
}

// reset enemy path progress
if (enemStart == 1) {
    enemDamage_pathProgress = 0; // Reset to start of path
	enemStart = 0;
}


// Update path progress
meleeDamage_pathProgress += meleeDamage_pathSpeed;
if (meleeDamage_pathProgress >= 1) {
    meleeDamage_pathProgress = 0; 
	newAttack = 0 // hides the bouncy number
}


// Update path progress
enemDamage_pathProgress += enemDamage_pathSpeed;
if (enemDamage_pathProgress >= 1) {
    enemDamage_pathProgress = 0; 
	enemAttack = 0 // hides the bouncy number
	cooldown = 0 //resets the cooldown
}


// Get the current X/Y position on the path
meleeDamage_drawX = path_get_x(p_dmg, meleeDamage_pathProgress);
meleeDamage_drawY = path_get_y(p_dmg, meleeDamage_pathProgress);

enemDamage_drawX = path_get_x(p_enem, enemDamage_pathProgress);
enemDamage_drawY = path_get_y(p_enem, enemDamage_pathProgress);