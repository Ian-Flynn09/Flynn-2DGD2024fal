/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A5071F9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Step Event - Based on Input$(13_10)if (keyboard_check(vk_right)) {$(13_10)    sprite_index = spr_walkright;$(13_10)    x += my_speed; // Move right$(13_10)} else if (keyboard_check(vk_left)) {$(13_10)    sprite_index = spr_walkleft;$(13_10)    x -= my_speed; // Move left$(13_10)} else if (keyboard_check(vk_up)) {$(13_10)    sprite_index = spr_walkup;$(13_10)    y -= my_speed; // Move up$(13_10)} else if (keyboard_check(vk_down)) {$(13_10)    sprite_index = spr_walkdown;$(13_10)    y += my_speed; // Move down$(13_10)} else {$(13_10)    sprite_index = spr_idle; // Set idle sprite$(13_10)}$(13_10)"
/// @description Execute Code
// Step Event - Based on Input
if (keyboard_check(vk_right)) {
    sprite_index = spr_walkright;
    x += my_speed; // Move right
} else if (keyboard_check(vk_left)) {
    sprite_index = spr_walkleft;
    x -= my_speed; // Move left
} else if (keyboard_check(vk_up)) {
    sprite_index = spr_walkup;
    y -= my_speed; // Move up
} else if (keyboard_check(vk_down)) {
    sprite_index = spr_walkdown;
    y += my_speed; // Move down
} else {
    sprite_index = spr_idle; // Set idle sprite
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FE326AE
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// obj_player: Step Event$(13_10)if (keyboard_check_pressed(ord("E"))) {$(13_10)    // Check if the player is near the door$(13_10)    var door = instance_nearest(x, y, obj_door); // Find the closest door$(13_10)    if (door != noone && distance_to_object(door) < 32) {$(13_10)        // Interact with the door if close enough$(13_10)        if (has_key) {$(13_10)            door.is_locked = false; // Unlock the door$(13_10)            show_message("The door is unlocked!");$(13_10)        } else {$(13_10)            show_message("The door is locked. You need a key!");$(13_10)        }$(13_10)    }$(13_10)}$(13_10)"
/// @description Execute Code
// obj_player: Step Event
if (keyboard_check_pressed(ord("E"))) {
    // Check if the player is near the door
    var door = instance_nearest(x, y, obj_door); // Find the closest door
    if (door != noone && distance_to_object(door) < 32) {
        // Interact with the door if close enough
        if (has_key) {
            door.is_locked = false; // Unlock the door
            show_message("The door is unlocked!");
        } else {
            show_message("The door is locked. You need a key!");
        }
    }
}