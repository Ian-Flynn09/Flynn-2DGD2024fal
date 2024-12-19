/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A5071F9
/// @DnDArgument : "code" "if (attacking) {$(13_10)    if (keyboard_check(vk_right)) {$(13_10)        sprite_index = spr_swingright;$(13_10)    } else if (keyboard_check(vk_left)) {$(13_10)        sprite_index = spr_swingleft;$(13_10)    } else if (keyboard_check(vk_up)) {$(13_10)        sprite_index = spr_swingup;$(13_10)    } else if (keyboard_check(vk_down)) {$(13_10)        sprite_index = spr_swingdown;$(13_10)    }$(13_10)    exit; // Prevent movement while attacking$(13_10)}$(13_10)$(13_10)var moving = false;$(13_10)$(13_10)if (keyboard_check(vk_right)) {$(13_10)    sprite_index = spr_walkright;$(13_10)    x += my_speed;$(13_10)    moving = true;$(13_10)} else if (keyboard_check(vk_left)) {$(13_10)    sprite_index = spr_walkleft;$(13_10)    x -= my_speed;$(13_10)    moving = true;$(13_10)} else if (keyboard_check(vk_up)) {$(13_10)    sprite_index = spr_walkup;$(13_10)    y -= my_speed;$(13_10)    moving = true;$(13_10)} else if (keyboard_check(vk_down)) {$(13_10)    sprite_index = spr_walkdown;$(13_10)    y += my_speed;$(13_10)    moving = true;$(13_10)}$(13_10)$(13_10)if (!moving) {$(13_10)    sprite_index = spr_idle;$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_space)) {$(13_10)    attacking = true;$(13_10)    alarm[0] = 30; // Attack lasts for 30 steps$(13_10)$(13_10)    // Check for collision with an enemy or boss$(13_10)    var enemy = instance_place(x, y, obj_enemy1); // Check for collision with regular enemies$(13_10)    var boss = instance_place(x, y, obj_boss);   // Check for collision with the boss$(13_10)$(13_10)    if (enemy != noone) { // If a collision with an enemy is detected$(13_10)        enemy.hp -= 10; // Reduce enemy health$(13_10)        show_debug_message("Enemy hit! Remaining HP: " + string(enemy.hp));$(13_10)$(13_10)        if (enemy.hp <= 0) {$(13_10)            instance_destroy(enemy); // Destroy enemy if health is 0 or less$(13_10)            show_debug_message("Enemy defeated!");$(13_10)        }$(13_10)    } else if (boss != noone) { // If a collision with the boss is detected$(13_10)        boss.hp -= 10; // Reduce boss health$(13_10)        show_debug_message("Boss hit! Remaining HP: " + string(boss.hp));$(13_10)$(13_10)        if (boss.hp <= 0) {$(13_10)            // Create the key at the boss's position$(13_10)            instance_create_layer(boss.x, boss.y, "Instances", obj_key);$(13_10)$(13_10)            instance_destroy(boss); // Destroy boss if health is 0 or less$(13_10)            show_debug_message("Boss defeated! Key created.");$(13_10)        }$(13_10)    } else {$(13_10)        show_debug_message("No enemy or boss detected.");$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
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
    exit; // Prevent movement while attacking
}

var moving = false;

if (keyboard_check(vk_right)) {
    sprite_index = spr_walkright;
    x += my_speed;
    moving = true;
} else if (keyboard_check(vk_left)) {
    sprite_index = spr_walkleft;
    x -= my_speed;
    moving = true;
} else if (keyboard_check(vk_up)) {
    sprite_index = spr_walkup;
    y -= my_speed;
    moving = true;
} else if (keyboard_check(vk_down)) {
    sprite_index = spr_walkdown;
    y += my_speed;
    moving = true;
}

if (!moving) {
    sprite_index = spr_idle;
}

if (keyboard_check_pressed(vk_space)) {
    attacking = true;
    alarm[0] = 30; // Attack lasts for 30 steps

    // Check for collision with an enemy or boss
    var enemy = instance_place(x, y, obj_enemy1); // Check for collision with regular enemies
    var boss = instance_place(x, y, obj_boss);   // Check for collision with the boss

    if (enemy != noone) { // If a collision with an enemy is detected
        enemy.hp -= 10; // Reduce enemy health
        show_debug_message("Enemy hit! Remaining HP: " + string(enemy.hp));

        if (enemy.hp <= 0) {
            instance_destroy(enemy); // Destroy enemy if health is 0 or less
            show_debug_message("Enemy defeated!");
        }
    } else if (boss != noone) { // If a collision with the boss is detected
        boss.hp -= 10; // Reduce boss health
        show_debug_message("Boss hit! Remaining HP: " + string(boss.hp));

        if (boss.hp <= 0) {
            // Create the key at the boss's position
            instance_create_layer(boss.x, boss.y, "Instances", obj_key);

            instance_destroy(boss); // Destroy boss if health is 0 or less
            show_debug_message("Boss defeated! Key created.");
        }
    } else {
        show_debug_message("No enemy or boss detected.");
    }
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