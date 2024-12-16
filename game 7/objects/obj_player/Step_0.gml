/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A5071F9
/// @DnDArgument : "code" "// Prioritize attack animation if attacking$(13_10)if (attacking) {$(13_10)    if (keyboard_check(vk_right)) {$(13_10)        sprite_index = spr_swingright;$(13_10)    } else if (keyboard_check(vk_left)) {$(13_10)        sprite_index = spr_swingleft;$(13_10)    } else if (keyboard_check(vk_up)) {$(13_10)        sprite_index = spr_swingup;$(13_10)    } else if (keyboard_check(vk_down)) {$(13_10)        sprite_index = spr_swingdown;$(13_10)    }$(13_10)    // No movement while attacking$(13_10)    exit; // Exit this event to prevent movement from overriding attack$(13_10)}$(13_10)$(13_10)// Movement logic$(13_10)var moving = false; // Track whether the player is moving$(13_10)$(13_10)if (keyboard_check(vk_right)) {$(13_10)    sprite_index = spr_walkright;$(13_10)    x += my_speed; // Move character to the right$(13_10)    moving = true; // Player is moving$(13_10)} else if (keyboard_check(vk_left)) {$(13_10)    sprite_index = spr_walkleft;$(13_10)    x -= my_speed; // Move character to the left$(13_10)    moving = true; // Player is moving$(13_10)} else if (keyboard_check(vk_up)) {$(13_10)    sprite_index = spr_walkup;$(13_10)    y -= my_speed; // Move character upward$(13_10)    moving = true; // Player is moving$(13_10)} else if (keyboard_check(vk_down)) {$(13_10)    sprite_index = spr_walkdown;$(13_10)    y += my_speed; // Move character downward$(13_10)    moving = true; // Player is moving$(13_10)}$(13_10)$(13_10)// If no keys are pressed, revert to idle animation$(13_10)if (!moving) {$(13_10)    sprite_index = spr_idle; // Replace spr_idle with your actual idle sprite$(13_10)}$(13_10)$(13_10)// Spacebar to trigger attack$(13_10)if (keyboard_check_pressed(vk_space)) {$(13_10)    attacking = true;$(13_10)    alarm[0] = 30; // Set an alarm to end the attack (adjust 30 for desired duration)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
// Prioritize attack animation if attacking
if (attacking) {
    if (keyboard_check(vk_right)) {
        sprite_index = spr_swingright;
    } else if (keyboard_check(vk_left)) {
        sprite_index = spr_swingleft;
    } else if (keyboard_check(vk_up)) {
        sprite_index = spr_swingup;
    } else if (keyboard_check(vk_down)) {
        sprite_index = spr_swingdown;
    }
    // No movement while attacking
    exit; // Exit this event to prevent movement from overriding attack
}

// Movement logic
var moving = false; // Track whether the player is moving

if (keyboard_check(vk_right)) {
    sprite_index = spr_walkright;
    x += my_speed; // Move character to the right
    moving = true; // Player is moving
} else if (keyboard_check(vk_left)) {
    sprite_index = spr_walkleft;
    x -= my_speed; // Move character to the left
    moving = true; // Player is moving
} else if (keyboard_check(vk_up)) {
    sprite_index = spr_walkup;
    y -= my_speed; // Move character upward
    moving = true; // Player is moving
} else if (keyboard_check(vk_down)) {
    sprite_index = spr_walkdown;
    y += my_speed; // Move character downward
    moving = true; // Player is moving
}

// If no keys are pressed, revert to idle animation
if (!moving) {
    sprite_index = spr_idle; // Replace spr_idle with your actual idle sprite
}

// Spacebar to trigger attack
if (keyboard_check_pressed(vk_space)) {
    attacking = true;
    alarm[0] = 30; // Set an alarm to end the attack (adjust 30 for desired duration)
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FE326AE
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// obj_player: Step Event$(13_10)if (keyboard_check_pressed(ord("E"))) {$(13_10)    // Check if the player is near the door$(13_10)    var door = instance_nearest(x, y, obj_door); // Find the closest door$(13_10)    if (door != noone && distance_to_object(door) < 32) {$(13_10)        // Interact with the door if close enough$(13_10)        if (has_key) {$(13_10)            door.is_locked = false; // Unlock the door$(13_10)            show_message("The door is unlocked!");$(13_10)			instance_destroy(door)$(13_10)        } else {$(13_10)            show_message("The door is locked. You need a key!");$(13_10)        }$(13_10)    }$(13_10)}$(13_10)"
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
			instance_destroy(door)
        } else {
            show_message("The door is locked. You need a key!");
        }
    }
}