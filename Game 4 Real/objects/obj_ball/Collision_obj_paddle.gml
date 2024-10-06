/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 425926E2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "ball_speed"
ball_speed += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1650EC98
/// @DnDArgument : "var" "ball_speed"
/// @DnDArgument : "value" "16"
if(ball_speed == 16)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49D1A826
	/// @DnDParent : 1650EC98
	/// @DnDArgument : "expr" "16"
	/// @DnDArgument : "var" "ball_speed"
	ball_speed = 16;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BE09060
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "var" "upzone"
upzone = 20;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 312B87B4
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "other.x+upzone"
if(x > other.x+upzone)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 45C0F3A2
	/// @DnDParent : 312B87B4
	/// @DnDArgument : "direction" "45"
	direction = 45;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 46B7B105
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E9078B9
	/// @DnDParent : 46B7B105
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "other.x-upzone"
	if(x < other.x-upzone)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 6E9C8159
		/// @DnDParent : 6E9078B9
		/// @DnDArgument : "direction" "135"
		direction = 135;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 303A8321
	/// @DnDParent : 46B7B105
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 7CDB92F4
		/// @DnDParent : 303A8321
		/// @DnDArgument : "direction" "90"
		direction = 90;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 26644923
		/// @DnDParent : 303A8321
		/// @DnDArgument : "soundid" "sndbonk"
		/// @DnDSaveInfo : "soundid" "sndbonk"
		audio_play_sound(sndbonk, 0, 0, 1.0, undefined, 1.0);
	}
}