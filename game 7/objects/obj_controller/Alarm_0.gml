/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35315AD2
/// @DnDArgument : "code" "// Alarm[0]: Start a new round$(13_10)current_round += 1;                         // Increment round$(13_10)enemies_per_round += 2;                     // Increase enemy count per round$(13_10)remaining_enemies = enemies_per_round;      // Set remaining enemies count$(13_10)$(13_10)audio_play_sound(snd_new_round, 1, false);$(13_10)$(13_10)for (var i = 0; i < enemies_per_round; i++) {$(13_10)    var zone_index = irandom(array_length(spawn_zones) - 1); // Pick a random zone index$(13_10)    var zone = spawn_zones[zone_index];$(13_10)$(13_10)    var spawn_x = random_range(zone[0], zone[2]); // Random x within the zone$(13_10)    var spawn_y = random_range(zone[1], zone[3]); // Random y within the zone$(13_10)$(13_10)    instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1); // Spawn the enemy$(13_10)}$(13_10)$(13_10)show_debug_message("Round " + string(current_round) + " started. Enemies: " + string(enemies_per_round));$(13_10)round_active = false; // Allow the next round to trigger when conditions are met$(13_10)"
// Alarm[0]: Start a new round
current_round += 1;                         // Increment round
enemies_per_round += 2;                     // Increase enemy count per round
remaining_enemies = enemies_per_round;      // Set remaining enemies count

audio_play_sound(snd_new_round, 1, false);

for (var i = 0; i < enemies_per_round; i++) {
    var zone_index = irandom(array_length(spawn_zones) - 1); // Pick a random zone index
    var zone = spawn_zones[zone_index];

    var spawn_x = random_range(zone[0], zone[2]); // Random x within the zone
    var spawn_y = random_range(zone[1], zone[3]); // Random y within the zone

    instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1); // Spawn the enemy
}

show_debug_message("Round " + string(current_round) + " started. Enemies: " + string(enemies_per_round));
round_active = false; // Allow the next round to trigger when conditions are met