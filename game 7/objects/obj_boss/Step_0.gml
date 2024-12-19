/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35AA89A4
/// @DnDArgument : "code" "// Movement toward player$(13_10)if (instance_exists(obj_player)) {$(13_10)    move_towards_point(obj_player.x, obj_player.y, speed);$(13_10)$(13_10)    // Attack logic$(13_10)    var dist_to_player = point_distance(x, y, obj_player.x, obj_player.y);$(13_10)$(13_10)    if (dist_to_player <= 100 && !boss_attacking) { // Attack range of 100 pixels$(13_10)        boss_attacking = true; // Start attack$(13_10)        alarm[0] = 90; // Cooldown (60 steps)$(13_10)        instance_create_layer(x, y, "Instances", obj_boss_attack); // Spawn attack$(13_10)        show_debug_message("Boss is attacking!");$(13_10)    }$(13_10)}$(13_10)// Check if the player exists$(13_10)if (instance_exists(obj_player)) {$(13_10)    // Fire a fireball every 60 steps$(13_10)    if (fireball_cooldown <= 0) {$(13_10)        // Calculate direction to the player$(13_10)        var target_direction = point_direction(x, y, obj_player.x, obj_player.y);$(13_10)$(13_10)        // Create the fireball$(13_10)        var fireball = instance_create_layer(x, y, "Instances", obj_boss_attack);$(13_10)        fireball.direction = target_direction; // Set fireball's direction$(13_10)        fireball.image_angle = target_direction; // Rotate sprite to match direction$(13_10)        fireball.speed = 8; // Adjust speed as needed$(13_10)$(13_10)        // Reset cooldown$(13_10)        fireball_cooldown = 110; // Cooldown for 60 steps$(13_10)        show_debug_message("Boss shoots a fireball!");$(13_10)    } else {$(13_10)        fireball_cooldown -= 1; // Decrease cooldown$(13_10)    }$(13_10)}$(13_10)"
// Movement toward player
if (instance_exists(obj_player)) {
    move_towards_point(obj_player.x, obj_player.y, speed);

    // Attack logic
    var dist_to_player = point_distance(x, y, obj_player.x, obj_player.y);

    if (dist_to_player <= 100 && !boss_attacking) { // Attack range of 100 pixels
        boss_attacking = true; // Start attack
        alarm[0] = 90; // Cooldown (60 steps)
        instance_create_layer(x, y, "Instances", obj_boss_attack); // Spawn attack
        show_debug_message("Boss is attacking!");
    }
}
// Check if the player exists
if (instance_exists(obj_player)) {
    // Fire a fireball every 60 steps
    if (fireball_cooldown <= 0) {
        // Calculate direction to the player
        var target_direction = point_direction(x, y, obj_player.x, obj_player.y);

        // Create the fireball
        var fireball = instance_create_layer(x, y, "Instances", obj_boss_attack);
        fireball.direction = target_direction; // Set fireball's direction
        fireball.image_angle = target_direction; // Rotate sprite to match direction
        fireball.speed = 8; // Adjust speed as needed

        // Reset cooldown
        fireball_cooldown = 110; // Cooldown for 60 steps
        show_debug_message("Boss shoots a fireball!");
    } else {
        fireball_cooldown -= 1; // Decrease cooldown
    }
}