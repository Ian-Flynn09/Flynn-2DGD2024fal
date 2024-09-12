/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F818727
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.p2_score"
obj_scoreboard.p2_score += 1;

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 12BA7737
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 14B060B4
/// @DnDArgument : "soundid" "Soundwinp2"
/// @DnDSaveInfo : "soundid" "Soundwinp2"
audio_play_sound(Soundwinp2, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60B93BC2
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "ball_speed"
ball_speed = 5;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0A9714A1
/// @DnDArgument : "speed" "ball_speed"
speed = ball_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68D08250
/// @DnDArgument : "expr" "ball_speed"
/// @DnDArgument : "var" "obj_paddlelt.paddle_speed"
obj_paddlelt.paddle_speed = ball_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A293BD2
/// @DnDArgument : "expr" "ball_speed"
/// @DnDArgument : "var" "obj_paddlert.paddle_speed"
obj_paddlert.paddle_speed = ball_speed;