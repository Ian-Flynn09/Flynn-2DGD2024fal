/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3E6391F0
/// @DnDArgument : "speed" "1"
/// @DnDArgument : "speed_relative" "1"
speed += 1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 3213EFAA
/// @DnDArgument : "direction" "45,0,315"
direction = choose(45,0,315);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64D2BD9B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "ball_speed"
ball_speed += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B053903
/// @DnDArgument : "var" "ball_speed"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "26"
if(ball_speed >= 26)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E4DACBD
	/// @DnDParent : 4B053903
	/// @DnDArgument : "expr" "26"
	/// @DnDArgument : "var" "ball_speed"
	ball_speed = 26;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46E6E377
	/// @DnDParent : 4B053903
	/// @DnDArgument : "expr" "ball_speed"
	/// @DnDArgument : "var" "paddle_speed"
	paddle_speed = ball_speed;
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 42876145
/// @DnDArgument : "soundid" "Soundhit"
/// @DnDArgument : "gain" "2"
/// @DnDSaveInfo : "soundid" "Soundhit"
audio_play_sound(Soundhit, 0, 0, 2, undefined, 1.0);