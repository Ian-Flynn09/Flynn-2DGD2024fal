/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5120843C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Create Event of obj_controller$(13_10)current_round = 1;        // Start at round 1$(13_10)enemies_per_round = 5;    // Number of enemies in the first round$(13_10)round_delay = 120;        // Delay in frames (2 seconds at 60 fps)$(13_10)round_active = false;     // Track if a round is active$(13_10)$(13_10)round_sound = snd_new_round; // Replace with your sound asset name$(13_10)"
/// @description Execute Code
// Create Event of obj_controller
current_round = 1;        // Start at round 1
enemies_per_round = 5;    // Number of enemies in the first round
round_delay = 120;        // Delay in frames (2 seconds at 60 fps)
round_active = false;     // Track if a round is active

round_sound = snd_new_round; // Replace with your sound asset name