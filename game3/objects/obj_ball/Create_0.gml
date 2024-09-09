/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E98B52B
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "ball_speed"
ball_speed = 5;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 0B54BDE2
randomize();

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 4268864D
/// @DnDArgument : "direction" "135,45,180,0,225,315"
direction = choose(135,45,180,0,225,315);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5881A30D
/// @DnDArgument : "speed" "ball_speed"
speed = ball_speed;