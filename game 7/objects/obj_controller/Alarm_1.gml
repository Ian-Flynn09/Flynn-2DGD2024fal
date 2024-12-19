/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30AB550B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Alarm[1] Event: Spawn the boss$(13_10)var spawn_x = room_width / 2; // Center of the room$(13_10)var spawn_y = room_height / 2;$(13_10)$(13_10)instance_create_layer(spawn_x, spawn_y, "Instances", obj_boss); // Spawn the boss$(13_10)$(13_10)// Play boss spawn sound (optional)$(13_10)audio_play_sound(snd_boss_spawn, 1, false);$(13_10)$(13_10)show_debug_message("The boss has been spawned!");$(13_10)"
/// @description Execute Code
// Alarm[1] Event: Spawn the boss
var spawn_x = room_width / 2; // Center of the room
var spawn_y = room_height / 2;

instance_create_layer(spawn_x, spawn_y, "Instances", obj_boss); // Spawn the boss

// Play boss spawn sound (optional)
audio_play_sound(snd_boss_spawn, 1, false);

show_debug_message("The boss has been spawned!");