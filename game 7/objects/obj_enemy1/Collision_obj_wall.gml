/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5A7A013C
speed = 0;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 032932FA
randomize();

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 2B68AB5B
/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
direction = choose(135,90,45,180,0,225,270,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6393666C
/// @DnDArgument : "speed" "4"
speed = 4;