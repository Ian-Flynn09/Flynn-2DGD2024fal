/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67A2170F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Step Event of obj_controller$(13_10)$(13_10)// Check if all enemies are dead$(13_10)if (instance_number(obj_enemy1) == 0) {$(13_10)    // Start a new round after a delay$(13_10)    if (round_delay > 0) {$(13_10)        round_delay -= 1; // Countdown timer$(13_10)    } else {$(13_10)        // New round starts$(13_10)        current_round += 1; // Increment round$(13_10)        enemies_per_round += 2; // Increase number of enemies each round$(13_10)        round_delay = 120; // Reset delay timer$(13_10)$(13_10)        // Play the round start sound$(13_10)        audio_play_sound(round_sound, 1, false);$(13_10)$(13_10)        // Spawn enemies$(13_10)        spawn_enemies();$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
// Step Event of obj_controller

// Check if all enemies are dead
if (instance_number(obj_enemy1) == 0) {
    // Start a new round after a delay
    if (round_delay > 0) {
        round_delay -= 1; // Countdown timer
    } else {
        // New round starts
        current_round += 1; // Increment round
        enemies_per_round += 2; // Increase number of enemies each round
        round_delay = 120; // Reset delay timer

        // Play the round start sound
        audio_play_sound(round_sound, 1, false);

        // Spawn enemies
        spawn_enemies();
    }
}