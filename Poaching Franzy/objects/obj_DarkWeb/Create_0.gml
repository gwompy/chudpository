/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 32FEE674
/// @DnDArgument : "code" "// Stores items as structs$(13_10)// idea provided by AI$(13_10)storeItems = ds_list_create();$(13_10)$(13_10)// Add animal names to the list$(13_10)ds_list_add(storeItems, "Bornean Bearded Pig");$(13_10)ds_list_add(storeItems, "Ethiopian Wolves");$(13_10)ds_list_add(storeItems, "Guinea Sheep");$(13_10)ds_list_add(storeItems, "Bison");$(13_10)ds_list_add(storeItems, "Wild Dogs");$(13_10)ds_list_add(storeItems, "Lions");$(13_10)ds_list_add(storeItems, "Buffalos");$(13_10)ds_list_add(storeItems, "Gazelles");$(13_10)ds_list_add(storeItems, "Deathstalker Scorpions");$(13_10)ds_list_add(storeItems, "Rüppell's Fox");$(13_10)ds_list_add(storeItems, "Peccary");$(13_10)ds_list_add(storeItems, "Jackrabbit");$(13_10)ds_list_add(storeItems, "American Alligator");$(13_10)ds_list_add(storeItems, "Snapping Turtle");$(13_10)ds_list_add(storeItems, "Nutria");$(13_10)ds_list_add(storeItems, "Swamp Fish");$(13_10)ds_list_add(storeItems, "Jaguar");$(13_10)ds_list_add(storeItems, "Anaconda");$(13_10)ds_list_add(storeItems, "Capybara");$(13_10)ds_list_add(storeItems, "Okapi");$(13_10)ds_list_add(storeItems, "Polar Bear");$(13_10)ds_list_add(storeItems, "Arctic Wolf");$(13_10)ds_list_add(storeItems, "Reindeer");$(13_10)ds_list_add(storeItems, "Harp Seal");$(13_10)$(13_10)$(13_10)$(13_10)// In the Draw Event$(13_10)$(13_10)// Starting positions$(13_10)var startX = 50;$(13_10)var startY = 50;$(13_10)var spacingY = 20;  // Space between each animal vertically$(13_10)var spacingX = 300; // Space between the two columns$(13_10)$(13_10)var halfList = ceil(ds_list_size(storeItems) / 2); // Halfway point$(13_10)$(13_10)for (var i = 0; i < ds_list_size(storeItems); i++) {$(13_10)    var column = 0;$(13_10)    var row = i;$(13_10)    $(13_10)    if (i >= halfList) {$(13_10)        column = 1;$(13_10)        row = i - halfList;$(13_10)    }$(13_10)    $(13_10)    var drawX = startX + (column * spacingX);$(13_10)    var drawY = startY + (row * spacingY);$(13_10)    $(13_10)    var animalName = storeItems[| i];$(13_10)    draw_text(drawX, drawY, animalName);$(13_10)}$(13_10)$(13_10)$(13_10)///startX and startY are where the first name will appear.$(13_10)$(13_10)//spacing controls the vertical space between each animal.$(13_10)$(13_10)//ds_list_size(storeItems) gets how many animals are in the list.$(13_10)$(13_10)//storeItems[| i] reads the i-th animal name.$(13_10)$(13_10)//draw_text(x, y, text) draws each name on the screen.$(13_10)$(13_10)///It splits the list in half (halfList).$(13_10)$(13_10)//The first half draws on the left column.$(13_10)$(13_10)//The second half moves to the right column.$(13_10)$(13_10)//spacingX controls how far apart the columns are.$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
// Stores items as structs
// idea provided by AI
storeItems = ds_list_create();

// Add animal names to the list
ds_list_add(storeItems, "Bornean Bearded Pig");
ds_list_add(storeItems, "Ethiopian Wolves");
ds_list_add(storeItems, "Guinea Sheep");
ds_list_add(storeItems, "Bison");
ds_list_add(storeItems, "Wild Dogs");
ds_list_add(storeItems, "Lions");
ds_list_add(storeItems, "Buffalos");
ds_list_add(storeItems, "Gazelles");
ds_list_add(storeItems, "Deathstalker Scorpions");
ds_list_add(storeItems, "Rüppell's Fox");
ds_list_add(storeItems, "Peccary");
ds_list_add(storeItems, "Jackrabbit");
ds_list_add(storeItems, "American Alligator");
ds_list_add(storeItems, "Snapping Turtle");
ds_list_add(storeItems, "Nutria");
ds_list_add(storeItems, "Swamp Fish");
ds_list_add(storeItems, "Jaguar");
ds_list_add(storeItems, "Anaconda");
ds_list_add(storeItems, "Capybara");
ds_list_add(storeItems, "Okapi");
ds_list_add(storeItems, "Polar Bear");
ds_list_add(storeItems, "Arctic Wolf");
ds_list_add(storeItems, "Reindeer");
ds_list_add(storeItems, "Harp Seal");



// In the Draw Event

// Starting positions
var startX = 50;
var startY = 50;
var spacingY = 20;  // Space between each animal vertically
var spacingX = 300; // Space between the two columns

var halfList = ceil(ds_list_size(storeItems) / 2); // Halfway point

for (var i = 0; i < ds_list_size(storeItems); i++) {
    var column = 0;
    var row = i;
    
    if (i >= halfList) {
        column = 1;
        row = i - halfList;
    }
    
    var drawX = startX + (column * spacingX);
    var drawY = startY + (row * spacingY);
    
    var animalName = storeItems[| i];
    draw_text(drawX, drawY, animalName);
}


///startX and startY are where the first name will appear.

//spacing controls the vertical space between each animal.

//ds_list_size(storeItems) gets how many animals are in the list.

//storeItems[| i] reads the i-th animal name.

//draw_text(x, y, text) draws each name on the screen.

///It splits the list in half (halfList).

//The first half draws on the left column.

//The second half moves to the right column.

//spacingX controls how far apart the columns are.