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