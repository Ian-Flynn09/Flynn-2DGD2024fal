/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5120843C
/// @DnDArgument : "code" "// Define spawn zones$(13_10)spawn_zones = [$(13_10)    [287, 101, 687, 101],    // Zone 1$(13_10)    [449, 1286, 649, 1286],  // Zone 2$(13_10)    [772, 481, 891, 481]   // Zone 3$(13_10)];$(13_10)$(13_10)// Initialize round variables$(13_10)current_round = 9;        // Start at round 1$(13_10)enemies_per_round = 5;    // Number of enemies in the first round$(13_10)remaining_enemies = 0;    // Tracks enemies left to defeat$(13_10)round_active = false;     // Round starts inactive$(13_10)max_rounds = 10;           // Total number of rounds before final boss$(13_10)boss_spawned = false"
// Define spawn zones
spawn_zones = [
    [287, 101, 687, 101],    // Zone 1
    [449, 1286, 649, 1286],  // Zone 2
    [772, 481, 891, 481]   // Zone 3
];

// Initialize round variables
current_round = 9;        // Start at round 1
enemies_per_round = 5;    // Number of enemies in the first round
remaining_enemies = 0;    // Tracks enemies left to defeat
round_active = false;     // Round starts inactive
max_rounds = 10;           // Total number of rounds before final boss
boss_spawned = false