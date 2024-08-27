/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 595AE2BA
randomize();

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 2B59DAC7
/// @DnDArgument : "direction" "135,45,225,315"
direction = choose(135,45,225,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1C2F9E5D
/// @DnDArgument : "speed" "5"
speed = 5;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7DB43744
/// @DnDArgument : "speed" "1"
/// @DnDArgument : "speed_relative" "1"
speed += 1;