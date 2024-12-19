/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 25BF87A1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Destroy fireball if it goes out of the room$(13_10)if (x < 0 || x > room_width || y < 0 || y > room_height) {$(13_10)    instance_destroy();$(13_10)}$(13_10)$(13_10)// Check for collision with the player$(13_10)if (place_meeting(x, y, obj_player)) {$(13_10)    with (instance_place(x, y, obj_player)) {$(13_10)        health -= 15; // Reduce player's health$(13_10)        show_debug_message("Player hit by fireball! Remaining HP: " + string(health));$(13_10)    }$(13_10)    instance_destroy(); // Destroy fireball on impact$(13_10)}$(13_10)"
/// @description Execute Code
// Destroy fireball if it goes out of the room
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

// Check for collision with the player
if (place_meeting(x, y, obj_player)) {
    with (instance_place(x, y, obj_player)) {
        health -= 15; // Reduce player's health
        show_debug_message("Player hit by fireball! Remaining HP: " + string(health));
    }
    instance_destroy(); // Destroy fireball on impact
}