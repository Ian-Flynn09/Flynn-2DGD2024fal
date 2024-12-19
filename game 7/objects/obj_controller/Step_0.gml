/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67A2170F
/// @DnDArgument : "code" "// Monitor the round state$(13_10)if (!round_active && remaining_enemies <= 0) {$(13_10)    if (current_round < 10) {$(13_10)        // Regular round logic$(13_10)        show_debug_message("Round inactive, triggering next round...");$(13_10)        alarm[0] = 120; // Delay before starting the next round$(13_10)        round_active = true; // Prevent repeated triggers$(13_10)    } else if (current_round == 10 && !boss_spawned) {$(13_10)        // Spawn the boss$(13_10)        show_debug_message("Spawning the boss!");$(13_10)        alarm[1] = 120; // Delay before spawning the boss$(13_10)        boss_spawned = true; // Mark boss as spawned$(13_10)    } else {$(13_10)        // No more rounds or events after the boss$(13_10)        show_debug_message("Max rounds reached. No more rounds.");$(13_10)        round_active = false;$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)"
// Monitor the round state
if (!round_active && remaining_enemies <= 0) {
    if (current_round < 10) {
        // Regular round logic
        show_debug_message("Round inactive, triggering next round...");
        alarm[0] = 120; // Delay before starting the next round
        round_active = true; // Prevent repeated triggers
    } else if (current_round == 10 && !boss_spawned) {
        // Spawn the boss
        show_debug_message("Spawning the boss!");
        alarm[1] = 120; // Delay before spawning the boss
        boss_spawned = true; // Mark boss as spawned
    } else {
        // No more rounds or events after the boss
        show_debug_message("Max rounds reached. No more rounds.");
        round_active = false;
    }
}