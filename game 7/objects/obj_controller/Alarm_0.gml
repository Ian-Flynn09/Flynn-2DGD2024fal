/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35315AD2
/// @DnDArgument : "code" "current_round += 1;$(13_10)enemies_per_round += 2;$(13_10)remaining_enemies = enemies_per_round;$(13_10)$(13_10)audio_play_sound(snd_new_round, 1, false);$(13_10)$(13_10)for (var i = 0; i < enemies_per_round; i++) {$(13_10)    var zone_index = irandom(array_length(spawn_zones) - 1);$(13_10)    var zone = spawn_zones[zone_index];$(13_10)$(13_10)    var spawn_x = random_range(zone[0], zone[2]);$(13_10)    var spawn_y = random_range(zone[1], zone[3]);$(13_10)$(13_10)    instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1);$(13_10)}$(13_10)$(13_10)show_debug_message("Round " + string(current_round) + " started.");$(13_10)round_active = false; // Allow the next round to trigger$(13_10)$(13_10)"
current_round += 1;
enemies_per_round += 2;
remaining_enemies = enemies_per_round;

audio_play_sound(snd_new_round, 1, false);

for (var i = 0; i < enemies_per_round; i++) {
    var zone_index = irandom(array_length(spawn_zones) - 1);
    var zone = spawn_zones[zone_index];

    var spawn_x = random_range(zone[0], zone[2]);
    var spawn_y = random_range(zone[1], zone[3]);

    instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy1);
}

show_debug_message("Round " + string(current_round) + " started.");
round_active = false; // Allow the next round to trigger