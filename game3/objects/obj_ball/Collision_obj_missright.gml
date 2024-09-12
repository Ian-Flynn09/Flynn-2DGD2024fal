/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 05724362
/// @DnDArgument : "soundid" "Soundwinp1"
/// @DnDSaveInfo : "soundid" "Soundwinp1"
audio_play_sound(Soundwinp1, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 584A71E2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.p1_score"
obj_scoreboard.p1_score += 1;

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 0EACE7B2
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 286A6FEC
/// @DnDArgument : "speed" "5"
speed = 5;