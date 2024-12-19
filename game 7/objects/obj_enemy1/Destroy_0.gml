/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BF274B9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)with (obj_controller) {$(13_10)    remaining_enemies -= 1;$(13_10)    show_debug_message("Enemy defeated. Remaining enemies: " + string(remaining_enemies));$(13_10)}$(13_10)// Drop chance logic (25% chance to drop an item)$(13_10)if (random(100) < 25) { $(13_10)    // Randomly select an item to drop$(13_10)    var item_type = choose(obj_slurp_juice); // Replace with your item objects$(13_10)$(13_10)    // Create the item at the enemy's position$(13_10)    instance_create_layer(x, y, "Instances", item_type);$(13_10)}$(13_10)"
/// @description Execute Code
with (obj_controller) {
    remaining_enemies -= 1;
    show_debug_message("Enemy defeated. Remaining enemies: " + string(remaining_enemies));
}
// Drop chance logic (25% chance to drop an item)
if (random(100) < 25) { 
    // Randomly select an item to drop
    var item_type = choose(obj_slurp_juice); // Replace with your item objects

    // Create the item at the enemy's position
    instance_create_layer(x, y, "Instances", item_type);
}