/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 32FEE674
/// @DnDArgument : "code" "// Stores items as structs$(13_10)// idea provided by AI$(13_10)$(13_10)$(13_10)// Add animal names to the list$(13_10)$(13_10)$(13_10)// Shop variables in create event$(13_10)shopOpen = false$(13_10)global.shop = false$(13_10)$(13_10)selected = 0$(13_10)//Items$(13_10)// Stores items as structs$(13_10)// idea provided by AI$(13_10)// Add animal names to the list$(13_10)items = ds_list_create();$(13_10)$(13_10)ds_list_add(items, "Bornean Bearded Pig");$(13_10)ds_list_add(items, "Ethiopian Wolves");$(13_10)ds_list_add(items, "Guinea Sheep");$(13_10)ds_list_add(items, "Bison");$(13_10)ds_list_add(items, "Wild Dogs");$(13_10)ds_list_add(items, "Lions");$(13_10)ds_list_add(items, "Buffalos");$(13_10)ds_list_add(items, "Gazelles");$(13_10)ds_list_add(items, "Deathstalker Scorpions");$(13_10)ds_list_add(items, "Rüppell's Fox");$(13_10)ds_list_add(items, "Peccary");$(13_10)ds_list_add(items, "Jackrabbit");$(13_10)ds_list_add(items, "American Alligator");$(13_10)ds_list_add(items, "Snapping Turtle");$(13_10)ds_list_add(items, "Nutria");$(13_10)ds_list_add(items, "Swamp Fish");$(13_10)ds_list_add(items, "Jaguar");$(13_10)ds_list_add(items, "Anaconda");$(13_10)ds_list_add(items, "Capybara");$(13_10)ds_list_add(items, "Okapi");$(13_10)ds_list_add(items, "Polar Bear");$(13_10)ds_list_add(items, "Arctic Wolf");$(13_10)ds_list_add(items, "Reindeer");$(13_10)ds_list_add(items, "Harp Seal");$(13_10)$(13_10)$(13_10)itemCount = ds_list_size(items);$(13_10)// GUI properties$(13_10)display_set_gui_size(3840,3840)$(13_10)guiwidth = display_get_gui_width();$(13_10)guiheight = display_get_gui_height();$(13_10)$(13_10)menuWidth = guiwidth * 0.3;$(13_10)menuMargin = guiWidth * 0.1;$(13_10)$(13_10)previewWidth = (guiWidth - (menuWidth + menuMargin));$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
// Stores items as structs
// idea provided by AI


// Add animal names to the list


// Shop variables in create event
shopOpen = false
global.shop = false

selected = 0
//Items
// Stores items as structs
// idea provided by AI
// Add animal names to the list
items = ds_list_create();

ds_list_add(items, "Bornean Bearded Pig");
ds_list_add(items, "Ethiopian Wolves");
ds_list_add(items, "Guinea Sheep");
ds_list_add(items, "Bison");
ds_list_add(items, "Wild Dogs");
ds_list_add(items, "Lions");
ds_list_add(items, "Buffalos");
ds_list_add(items, "Gazelles");
ds_list_add(items, "Deathstalker Scorpions");
ds_list_add(items, "Rüppell's Fox");
ds_list_add(items, "Peccary");
ds_list_add(items, "Jackrabbit");
ds_list_add(items, "American Alligator");
ds_list_add(items, "Snapping Turtle");
ds_list_add(items, "Nutria");
ds_list_add(items, "Swamp Fish");
ds_list_add(items, "Jaguar");
ds_list_add(items, "Anaconda");
ds_list_add(items, "Capybara");
ds_list_add(items, "Okapi");
ds_list_add(items, "Polar Bear");
ds_list_add(items, "Arctic Wolf");
ds_list_add(items, "Reindeer");
ds_list_add(items, "Harp Seal");


itemCount = ds_list_size(items);
// GUI properties
display_set_gui_size(3840,3840)
guiwidth = display_get_gui_width();
guiheight = display_get_gui_height();

menuWidth = guiwidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = (guiWidth - (menuWidth + menuMargin));