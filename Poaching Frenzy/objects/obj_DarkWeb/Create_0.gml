/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 32FEE674
/// @DnDArgument : "code" "// Stores items as structs$(13_10)// idea provided by AI$(13_10)$(13_10)$(13_10)// Add animal names to the list$(13_10)$(13_10)$(13_10)// Shop variables in create event$(13_10)shopOpen = false$(13_10)global.shop = false$(13_10)$(13_10)selected = 0$(13_10)$(13_10)$(13_10)//I know the items have different prices than original$(13_10)//chart. I made some of the numbers references to hate symbols$(13_10)//https://www.adl.org/resources/hate-symbols/search $(13_10)items = [$(13_10)    ["Bornean Bearded Pig", 38],    $(13_10)    ["Ethiopian Wolf", 148],$(13_10)    ["Guinea Sheep", 1],$(13_10)	["bison", 14],    $(13_10)    ["African Wild Dog", 128],$(13_10)    ["lion", 211],$(13_10)	["buffalo",14],$(13_10)	["buffalo",14],$(13_10)	["Gazelle",5],$(13_10)	["Deathstalker Scorpion",88],$(13_10)	["Ruppell's Fox",50],$(13_10)	["Peccary",109],$(13_10)	["Jackrabbit",23],$(13_10)	["American Alligator",175],$(13_10)	["Snapping Turtle",111],$(13_10)	["nutria",5],$(13_10)	["Swamp Fish",5],$(13_10)	["Jaguar",311],$(13_10)	["Anaconda",263],$(13_10)	["Capybara",5],$(13_10)	["okapi",5],$(13_10)	["Polar Bear",1488], //is 1488 too much? I couldn't help myself.$(13_10)	["Arctic Wolf",318],$(13_10)	["reindeer",75],$(13_10)	["Harp Seal",110],$(13_10)];$(13_10)$(13_10)//length of items$(13_10)itemCount = array_length(items);$(13_10)$(13_10)// GUI properties$(13_10)display_set_gui_size(3840,3840)$(13_10)guiWidth = display_get_gui_width();$(13_10)guiHeight = display_get_gui_height();$(13_10)$(13_10)menuWidth = guiWidth * 0.3;$(13_10)menuMargin = guiWidth * 0.1;$(13_10)$(13_10)previewWidth = (guiWidth - (menuWidth + menuMargin));$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
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
    ["Bornean Bearded Pig", 38],    
    ["Ethiopian Wolf", 148],
    ["Guinea Sheep", 1],
	["bison", 14],    
    ["African Wild Dog", 128],
    ["lion", 211],
	["buffalo",14],
	["buffalo",14],
	["Gazelle",5],
	["Deathstalker Scorpion",88],
	["Ruppell's Fox",50],
	["Peccary",109],
	["Jackrabbit",23],
	["American Alligator",175],
	["Snapping Turtle",111],
	["nutria",5],
	["Swamp Fish",5],
	["Jaguar",311],
	["Anaconda",263],
	["Capybara",5],
	["okapi",5],
	["Polar Bear",1488], //is 1488 too much? I couldn't help myself.
	["Arctic Wolf",318],
	["reindeer",75],
	["Harp Seal",110],
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