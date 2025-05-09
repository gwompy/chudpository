/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 32FEE674
/// @DnDArgument : "code" "// Stores items as structs$(13_10)// idea provided by AI$(13_10)$(13_10)$(13_10)// Add animal names to the list$(13_10)$(13_10)$(13_10)// Shop variables in create event$(13_10)shopOpen = false$(13_10)global.shop = false$(13_10)$(13_10)selected = 0$(13_10)$(13_10)$(13_10)//I know the items have different prices than original$(13_10)//chart. I made some of the numbers references to hate symbols$(13_10)//https://www.adl.org/resources/hate-symbols/search $(13_10)items = [$(13_10)    ["bornean_bearded_pig", 38],    $(13_10)    ["ethiopian_wolf", 148],$(13_10)    ["guinea_sheep", 1],$(13_10)	["bison", 14],    $(13_10)    ["african_wild_dog", 128],$(13_10)    ["lion", 211],$(13_10)	["buffalo",14],$(13_10)	["gazelle",5],$(13_10)	["deathstalker_scorpion",88],$(13_10)	["desert_fox",50],$(13_10)	["peccary",109],$(13_10)	["jackrabbit",23],$(13_10)	["american_alligator",175],$(13_10)	["snapping_turtle",111],$(13_10)	["nutria",5],$(13_10)	["swamp_fish",5],$(13_10)	["jaguar",311],$(13_10)	["anaconda",263],$(13_10)	["capybara",5],$(13_10)	["okapi",5],$(13_10)	["polar_bear",1488], //is 1488 too much? I couldn't help myself.$(13_10)	["arctic_wolf",318],$(13_10)	["reindeer",75],$(13_10)	["harp_seal",110],$(13_10)];$(13_10)$(13_10)//length of items$(13_10)itemCount = array_length(items);$(13_10)$(13_10)// GUI properties$(13_10)display_set_gui_size(3840,3840)$(13_10)guiWidth = display_get_gui_width();$(13_10)guiHeight = display_get_gui_height();$(13_10)$(13_10)menuWidth = guiWidth * 0.3;$(13_10)menuMargin = guiWidth * 0.1;$(13_10)$(13_10)previewWidth = (guiWidth - (menuWidth + menuMargin));$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
// Stores items as structs
// idea provided by AI


// Add animal names to the list


// Shop variables in create event
shopOpen = false
global.shop = false

selected = 0


//I know the items have different prices than original
//chart. I made some of the numbers references to hate symbols
//https://www.adl.org/resources/hate-symbols/search 
items = [
    ["bornean_bearded_pig", 38],    
    ["ethiopian_wolf", 148],
    ["guinea_sheep", 1],
	["bison", 14],    
    ["african_wild_dog", 128],
    ["lion", 211],
	["buffalo",14],
	["gazelle",5],
	["deathstalker_scorpion",88],
	["desert_fox",50],
	["peccary",109],
	["jackrabbit",23],
	["american_alligator",175],
	["snapping_turtle",111],
	["nutria",5],
	["swamp_fish",5],
	["jaguar",311],
	["anaconda",263],
	["capybara",5],
	["okapi",5],
	["polar_bear",1488], //is 1488 too much? I couldn't help myself.
	["arctic_wolf",318],
	["reindeer",75],
	["harp_seal",110],
];

//length of items
itemCount = array_length(items);

// GUI properties
display_set_gui_size(3840,3840)
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = (guiWidth - (menuWidth + menuMargin));