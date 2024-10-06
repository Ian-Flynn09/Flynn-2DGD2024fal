/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53C82952
/// @DnDArgument : "expr" "7"
/// @DnDArgument : "var" "ball_speed"
ball_speed = 7;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 28CFDC9B
randomize();

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 225B7A1E
/// @DnDArgument : "direction" "135,45,225,315"
direction = choose(135,45,225,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 37DEDF72
/// @DnDArgument : "speed" "ball_speed"
speed = ball_speed;